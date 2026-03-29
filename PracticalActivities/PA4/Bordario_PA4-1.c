#include <xc.h>

void interrupt ISR (void) {
    GIE = 0;               // disable all unmasked interrupts [cite: 92]
    if (TMR1IF == 1) {     // checks Timer1 interrupt flag [cite: 93]
        TMR1IF = 0;        // clears interrupt flag [cite: 96]
        TMR1 = 0x0BDC;     // timer will start counting at 0x0BDC (3036) [cite: 97]
        RA0 = RA0 ^ 1;     // toggles the LED at RA0 [cite: 98]
    }
    GIE = 1;               // enable all unmasked interrupts [cite: 99]
}

void main(void) {
    ADCON1 = 0x06;         // set all pins in PORTA as digital I/O [cite: 75]
    TRISA = 0x00;          // sets all of PORTA to output [cite: 76]
    RA0 = 0;               // initialize RA0 to 0 (LED off) [cite: 76]
    
    T1CON = 0x30;          // 1:8 prescaler, internal clock, Timer1 off [cite: 76]
    TMR1IE = 1;            // enable Timer1 overflow interrupt (PIE1 reg) [cite: 76]
    TMR1IF = 0;            // reset interrupt flag (PIR1 reg) [cite: 76]
    PEIE = 1;              // enable all peripheral interrupt (INTCON reg) [cite: 76]
    GIE = 1;               // enable all unmasked interrupts (INTCON reg) [cite: 77]
    
    TMR1 = 0x0BDC;         // counter starts counting at 0x0BDC (3036) [cite: 78]
    TMR1ON = 1;            // Turns on Timer1 (T1CON reg) [cite: 78]

    for(;;) {
        // foreground routine [cite: 85]
    }
}