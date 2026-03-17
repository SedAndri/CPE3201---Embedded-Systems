
// Bordario PA3-1: Keypad to 7-segment using external interrupt on RB0

#include <xc.h>

#pragma config FOSC = XT  // oscillator selection
#pragma config WDTE = OFF // watchdog timer disabled
#pragma config PWRTE = ON // power-up timer enabled
#pragma config BOREN = ON // brown-out reset enabled
#pragma config LVP = OFF  // low-voltage programming disabled
#pragma config CPD = OFF  // data EEPROM code protection disabled
#pragma config WRT = OFF  // flash program memory write protection off
#pragma config CP = OFF   // code protection off

#define _XTAL_FREQ 4000000

// Interrupt Service Routine for RB0/INT
void interrupt ISR(void) {
    if (INTCONbits.INTF) {   // check the interrupt flag
        INTCONbits.INTF = 0; // clear the interrupt flag

        // Read 4-bit keypad code from RD3:RD0
        unsigned char code  = PORTD & 0x0F;     // Mask to get only the lower 4 bits
        unsigned char digit = 0;                // Variable to hold the decoded digit for the 7-segment display

        // Map MM74C922 code to the digit printed on the keypad.
        // The wiring in your schematic produces the following codes
        // for the decimal keys:
        // 1->0x00, 2->0x01, 3->0x02, 4->0x04, 5->0x05,
        // 6->0x06, 7->0x08, 8->0x09, 9->0x0A, 0->0x0B.
        switch (code) {
            case 0x00: digit = 1; break; // "1" key
            case 0x01: digit = 2; break; // "2" key
            case 0x02: digit = 3; break; // "3" key
            case 0x04: digit = 4; break; // "4" key
            case 0x05: digit = 5; break; // "5" key
            case 0x06: digit = 6; break; // "6" key
            case 0x08: digit = 7; break; // "7" key
            case 0x09: digit = 8; break; // "8" key
            case 0x0A: digit = 9; break; // "9" key
            case 0x0D: digit = 0; break; // "0" key
            default:   return;           // ignore * and # (and any unused codes)
        }

        // Output BCD digit to 7-segment decoder on PORTC
        PORTC = digit;
    }
}

int main(void) {
    // Hardware Initialization
    TRISBbits.TRISB0 = 1; // RB0 as input for DAVBL external interrupt
    TRISC = 0x00;         // PORTC as output for 7-segment display with decoder
    TRISD = 0xFF;         // PORTD as input for keypad data (RD3:RD0)
    PORTC = 0x00;         // Initialize display to 0

    // Setting Up the External Interrupt
    OPTION_REGbits.INTEDG = 1; // interrupt on rising edge
    INTCONbits.INTE = 1;       // enable RB0/INT external interrupt
    INTCONbits.INTF = 0;       // clear interrupt flag
    INTCONbits.GIE = 1;        // enable global interrupts

    while (1) {
        // No foreground routine; everything handled by ISR
    }

    return 0;
}