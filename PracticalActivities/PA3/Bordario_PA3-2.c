// PA3-2: Keypad external interrupt + 1-second LED blink on RA0

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

volatile unsigned char count_flag = 0; // Signifies an overflow [cite: 223]
volatile unsigned int overflow_count = 0;

void interrupt ISR(void) {
    INTCONbits.GIE = 0; // Disable all unmasked interrupts 

    // 1. RB0/INT External Interrupt
    if (INTCONbits.INTF) {
        INTCONbits.INTF = 0;

        unsigned char code  = PORTD & 0x0F;
        unsigned char digit = 0;

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
            case 0x0D: digit = 0; break;  // "0" key
            default:   digit = PORTC; break;
        }
        PORTC = digit;
    }

    // 2. Timer0 Overflow Interrupt
    if (INTCONbits.T0IF) {       // note: separate 'if', not 'else if'
        INTCONbits.T0IF = 0;
        overflow_count++;

        if (overflow_count >= 122) {  // ~1 second at 4 MHz, 1:32 prescaler
            count_flag = 1;
            overflow_count = 0;
        }
    }

    INTCONbits.GIE = 1; // Enable all unmasked interrupts 
}

// Delay function utilizing Timer0 overflows [cite: 229]
void delay() {
    count_flag = 0;
    while (count_flag == 0); // [cite: 224]
}

int main(void) {
    // Hardware Initialization
    ADCON1 = 0x06;        // Configure PORTA as digital I/O
    TRISAbits.TRISA0 = 0; // RA0 as output for LED [cite: 226]
    TRISBbits.TRISB0 = 1; 
    TRISC = 0x00;         
    TRISD = 0xFF;         
    
    PORTAbits.RA0 = 0;
    PORTC = 0x00;         

    // RB0/INT External Interrupt Setup
    OPTION_REGbits.INTEDG = 1; 
    INTCONbits.INTE = 1;       
    INTCONbits.INTF = 0;       

    // Timer0 Overflow Interrupt Setup (1:32 Prescaler)
    OPTION_REGbits.T0CS = 0; // [cite: 133]
    OPTION_REGbits.PSA = 0;  
    OPTION_REGbits.PS2 = 1;  
    OPTION_REGbits.PS1 = 0;
    OPTION_REGbits.PS0 = 0;
    
    INTCONbits.T0IE = 1;     // [cite: 188]
    INTCONbits.T0IF = 0;     // [cite: 190]
    
    INTCONbits.GIE = 1;      

    // Foreground routine [cite: 228]
    while (1) {
        PORTAbits.RA0 ^= 1; // Blink LED
        delay();            // 1-second interval
    }

    return 0;
}