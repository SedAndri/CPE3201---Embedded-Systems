// PA3-3: 0-9 Auto-counter with keypad interrupt override

#include <xc.h>

#pragma config FOSC = XT  
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF  
#pragma config CPD = OFF  
#pragma config WRT = OFF  
#pragma config CP = OFF   

#define _XTAL_FREQ 4000000 

volatile unsigned char count_flag = 0; 
volatile unsigned int overflow_count = 0;
volatile unsigned char counter_val = 0; // Holds the current counter state

void interrupt ISR(void) {
    INTCONbits.GIE = 0; // Disable all unmasked interrupts to prevent interrupt overlap
    
    // 1. RB0/INT External Interrupt
    if (INTCONbits.INTF) {   
        INTCONbits.INTF = 0; 
        
        unsigned char code = PORTD & 0x0F;
        unsigned char digit = counter_val; // Default to current value if an unmapped key is pressed

        // Your specific schematic keypad mapping
        switch (code) {
            case 0x00: digit = 1; break; 
            case 0x01: digit = 2; break; 
            case 0x02: digit = 3; break; 
            case 0x04: digit = 4; break; 
            case 0x05: digit = 5; break; 
            case 0x06: digit = 6; break; 
            case 0x08: digit = 7; break; 
            case 0x09: digit = 8; break; 
            case 0x0A: digit = 9; break; 
            case 0x0D: digit = 0; break; 
        }
        
        // Use the RB0/INT ISR to load the counter with the key pressed
        counter_val = digit;
        PORTC = counter_val;
        overflow_count = 0; // Reset timer so the newly pressed number shows for a full 0.8s
    }
    
    // 2. Timer0 Overflow Interrupt
    if (INTCONbits.T0IF) { 
        INTCONbits.T0IF = 0;    
        overflow_count++;
        
        // Adjusted for 1MHz hardware clock: 24 overflows required for ~0.8s
        // Original 4MHz calculation: if (overflow_count >= 98) {
        if (overflow_count >= 24) {
            count_flag = 1; 
            overflow_count = 0;
        }
    }
    
    INTCONbits.GIE = 1; // Enable interrupts again
}

// The delay() must use timer overflows
void delay() {
    count_flag = 0;
    while(count_flag == 0); 
}

int main(void) {
    // Hardware Initialization
    TRISBbits.TRISB0 = 1; 
    TRISC = 0x00;         
    TRISD = 0xFF;         
    PORTC = 0x00;         

    // External Interrupt Setup
    OPTION_REGbits.INTEDG = 1; // interrupt at rising edge
    INTCONbits.INTE = 1;       // enable RB0/INT external interrupt
    INTCONbits.INTF = 0;       // clears the interrupt flag

    // Timer0 Setup
    OPTION_REGbits.T0CS = 0; // internal instruction cycle clock
    OPTION_REGbits.PSA = 0;  // prescaler assignment to TMR0
    OPTION_REGbits.PS2 = 1;  // \
    OPTION_REGbits.PS1 = 0;  // -> prescaler 1:32
    OPTION_REGbits.PS0 = 0;  // /
    
    INTCONbits.T0IE = 1;     // enable Timer0 overflow interrupt
    INTCONbits.T0IF = 0;     // clears the interrupt flag
    
    INTCONbits.GIE = 1;      // enables all unmasked interrupt

    // Foreground routine will only handle the counting
    while (1) {
        PORTC = counter_val;
        delay(); 
        
        counter_val++;
        
        // Counter rolls back to zero after 9
        if (counter_val > 9) {
            counter_val = 0;
        }
    }

    return 0;
}