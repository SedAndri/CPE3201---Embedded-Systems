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
void __interrupt() ISR(void) {
    INTCONbits.GIE = 0; // disables all unmasked interrupts to prevent interrupt overlap [cite: 85, 86]
    
    if (INTCONbits.INTF) { // check the interrupt flag [cite: 87, 88]
        INTCONbits.INTF = 0; // clears the interrupt flag [cite: 90, 91]
        
        // Output the keypad value to the 7-segment display
        PORTC = PORTD & 0x0F; 
    }
    
    INTCONbits.GIE = 1; // enable interrupts again [cite: 94, 95]
}


int main(void) {
    // Hardware Initialization 
    TRISBbits.TRISB0 = 1; // Set RB0 as input for DAVBL external interrupt [cite: 30, 107]
    TRISC = 0x00;         // Set PORTC as output for 7-segment display w/ decoder 
    TRISD = 0xFF;         // Set PORTD as input for Keypad Data (RD3:RD0) [cite: 107]
    PORTC = 0x00;         // Initialize display to 0

    // Setting Up the External Interrupt
    OPTION_REGbits.INTEDG = 1; // interrupt at rising edge [cite: 71, 72]
    INTCONbits.INTE = 1;       // enable RB0/INT external interrupt [cite: 73, 74]
    INTCONbits.INTF = 0;       // clears the interrupt flag [cite: 75, 76]
    INTCONbits.GIE = 1;        // enables all unmasked interrupt [cite: 77, 78, 79]

    while(1) {
        // No foreground routine; handled solely by the ISR [cite: 54, 66]
    }

    return 0;
}
