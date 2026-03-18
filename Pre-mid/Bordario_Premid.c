#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 40000000

#define RS RB5
#define EN RB7
#define RW RB6

bit myINTF = 0;         // Flag to indicate external interrupt occurrence
bit myTMR0IF = 0;       // Flag to indicate Timer0 overflow occurrence
unsigned char counter = 0x0E;  // Counter variable to hold the current count value for display on PORTC

void interrupt ISR (){
    GIE = 0;            // Disable global interrupts to prevent nested interrupts
    if(INTF){
        INTF = 0;  

        if(PORTB == 0x00) { PORTC = 0x01; counter = 0x01; }
        // ... more key mappings ...
        else if(PORTD == 0x0D) { PORTC = 0x00; counter = 0x0E; }

    } else if(TMR0IF){
        TMR0IF = 0;
        myTMR0IF = 1;   // Signal delay() function that Timer0 overflowed
    }

	if(RB0){
	
	}
    GIE = 1;            // Re-enable global interrupts
}

void delay_ms(unsigned int ms)
{
    while(ms--)
        __delay_ms(1);
}

void instCtrl(unsigned char cmd)
{
    PORTC = cmd;     // Send command
	RS = 0;
	RW = 0;
    EN = 1;
    __delay_ms(2);
    EN = 0;

}

void dataCtrl(unsigned char data)
{
    PORTC = data;    // Send character
	RS = 1;
	RW = 0;
	EN = 1;
    __delay_ms(2);
    EN = 0;
}

void initLCD()
{
    delay_ms(20);        // LCD startup delay
    instCtrl(0x38);      // Function set: 8-bit, 2 line
    instCtrl(0x08);      // Display OFF
    instCtrl(0x01);      // Clear display
    delay_ms(2);
    instCtrl(0x06);      // Entry mode: increment, no shift
    instCtrl(0x0E);      // Display ON, cursor ON, blink OFF
}

void delay(int count){
    int of_count = 0;           // Overflow count to track the number of Timer0 overflows
    while (of_count < count){   // Loop until the desired number of overflows has occurred
        if (myTMR0IF){          // Check if Timer0 has overflowed
            of_count++;         // Increment overflow count
            myTMR0IF = 0;       // Clear the Timer0 overflow flag for the next cycle
        }
    }
}

void display_counter(unsigned char value)
{
    unsigned char tens = value / 10;
    unsigned char ones = value % 10;

    // Move cursor back to the position where the number is shown
    instCtrl(0x9B);
    dataCtrl('0' + tens);
    dataCtrl('0' + ones);
}

void main(){
    TRISB = 0x01;
    TRISC = 0x00;    // Output
    TRISD = 0x1F;    // Input
 
    INTEDG = 1;      // Low to high edge
    INTF = 0;        // Interrupt flag bit (must be manually cleared)
    INTE = 1;        // Interrupt enable bit

    TMR0IF = 0;      // Timer0 flag bit
    TMR0IE = 1;      // Timer0 enable bit

    GIE = 1;         // Enable global interrupts after everything is set
  	PORTC = 0X00;    // Initialize display

    initLCD();
    instCtrl(0xC6);   // 2nd line, 7th column

    dataCtrl('T');
    dataCtrl('I');
    dataCtrl('M');
    dataCtrl('E');
    dataCtrl('R');
    
	instCtrl(0x9B);
    dataCtrl('1');
    dataCtrl('4');

    // Ensure counter variable matches initial display value
    counter = 0x0E;
    
	OPTION_REG = 0xC4;  
	while(1){
        if(RB0){
            // RB0 active high: count down from 14 to 0
            if(counter > 0x00){
                counter--;
                display_counter(counter);
                delay(79);      // Delay between counts
            }
            else{
                // Stay at 0 while RB0 remains high
            }
        }
        else{
            // RB0 low: reset display back to 14 if needed
            if(counter != 0x0E){
                counter = 0x0E;
                display_counter(counter);
            }
        }
    }
}