#include <xc.h>

#define _XTAL_FREQ 4000000UL

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

// Global volatile variable (32-bit to prevent overflow at low frequencies)
volatile unsigned long period = 0;

// Function Prototypes
void initLCD(void);
void instCtrl(unsigned char cmd);
void dataCtrl(unsigned char data);
void printString(const char* str);
void printNumber(unsigned long val);
void delay(unsigned int ms);

void instCtrl(unsigned char cmd){
    PORTB = cmd; // Send command to PORTB
    // Control lines set to PORTD
    RD0 = 0; // RS = 0 for command
    RD2 = 0; // RW = 0 for write
    RD1 = 1; // E = 1 to latch command
    __delay_us(50);
    RD1 = 0; // E = 0 to complete command
}

void dataCtrl(unsigned char data){
    PORTB = data; // Send data to PORTB
    // Control lines set to PORTD
    RD0 = 1; // RS = 1 for data
    RD2 = 0; // RW = 0 for write
    RD1 = 1; // E = 1 to latch command
    __delay_us(50);
    RD1 = 0; // E = 0 to complete command
}

void initLCD(void){
    // Initialize LCD in 8-bit mode 
    delay(20);       // Wait for LCD to power up
    instCtrl(0x38);  // Function set: 8-bit, 2 lines, 5x8 dots
    instCtrl(0x0C);  // Display on, cursor off, blinking off
    instCtrl(0x01);  // Clear display
    delay(2);        // Clear display takes longer
    instCtrl(0x06);  // Entry mode set: increment cursor, no shift
}

void printString(const char* str) {
    // Loop through the string array until it hits the null terminator
    while(*str) {
        dataCtrl(*str++);
    }
}

// Custom function to convert a 32-bit integer to string and print it
void printNumber(unsigned long val) {
    char buffer[11]; // Max 32-bit unsigned int is 4,294,967,295 (10 digits) + null
    buffer[10] = '\0';
    int i = 9;
    
    if (val == 0) {
        buffer[i--] = '0';
    } else {
        // Extract digits right-to-left
        while (val > 0 && i >= 0) {
            buffer[i--] = (val % 10) + '0'; // Convert math digit to ASCII character
            val /= 10;
        }
    }
    // Print the string starting from the first valid character we wrote
    printString(&buffer[i + 1]);
}

void interrupt ISR(void) 
{
    GIE = 0; // disable all unmasked interrupts 
    
    if(CCP1IF == 1) // checks CCP1 interrupt flag
    {
        CCP1IF = 0; // clears interrupt flag
        TMR1 = 0;   // resets TMR1
        
        // Calculate period directly in microseconds
        // 1 Timer tick = 8us (due to 1:8 prescaler and 4MHz Fosc)
        // Cast CCPR1 to unsigned long to prevent math overflow
        period = (unsigned long)CCPR1 * 8; 
    }
    
    GIE = 1; // enable all unmasked interrupts 
}

void delay(unsigned int ms){
    while(ms--){
        __delay_ms(1);
    }
}

void main(void)
{
    ADCON1 = 0x07; // ensure all pins used here are digital
    PORTB = 0x00;
    PORTD = 0x00;

    // 1. Configure Port Directions
    TRISB = 0x00; // set PORTB as output (LCD Data)
    TRISD = 0x00; // set PORTD as output (LCD Control)
    TRISC = 0x04; // set RC2 as input (CCP1 Capture pin)
    
    // 2. Initialize the LCD
    initLCD(); 
    
    // 3. Configure Timers and CCP
    T1CON = 0x30;   // 1:8 prescaler, Timer1 off
    CCP1CON = 0x05; // capture mode: every rising edge
    
    // 4. Configure Interrupts
    CCP1IE = 1; // enable TMR1/CCP1 match interrupt (PIE1 reg)
    CCP1IF = 0; // reset interrupt flag (PIR1 reg)
    PEIE = 1;   // enable all peripheral interrupt (INTCON reg)
    GIE = 1;    // enable all unmasked interrupts (INTCON reg)
    
    // 5. Start Modules
    TMR1ON = 1; // Turns on Timer1 (T1CON reg)
  
    for(;;) // foreground routine
    {
       //instCtrl(0x80); // Move LCD cursor to Home (Line 1, Position 1)
        instCtrl(0xC6);
        printString("Period: ");
       
      instCtrl(0x9A);
        printNumber(period);
        printString(" us    "); // Extra spaces overwrite old characters if the number shrinks
        
        delay(100); // Update the LCD periodically to prevent flickering
    }
}