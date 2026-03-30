#include <xc.h>

void interrupt ISR (void) {
    GIE = 0;               // disable all unmasked interrupts [cite: 190]
    if (TMR2IF == 1) {     // checks Timer2 interrupt flag (TMR2=PR2) [cite: 191]
        TMR2IF = 0;        // clears interrupt flag [cite: 192]
        RA0 = RA0 ^ 1;     // toggles the output signal at RA0 [cite: 197]
    }
    GIE = 1;               // enable all unmasked interrupts [cite: 195]
}

void main(void) {
    ADCON1 = 0x06;         // set all pins in PORTA as digital I/O [cite: 166]
    TRISA = 0x00;          // sets all of PORTA to output [cite: 166]
    RA0 = 0;               // initialize RA0 to 0 [cite: 166]
    
    T2CON = 0x01;          // 1:4 prescaler, Timer2 off [cite: 167]
    TMR2IE = 1;            // enable Timer2/PR2 match interrupt (PIE1 reg) [cite: 167]
    TMR2IF = 0;            // reset interrupt flag (PIR1 reg) [cite: 167]
    PEIE = 1;              // enable all peripheral interrupt (INTCON reg) [cite: 168]
    GIE = 1;               // enable all unmasked interrupts (INTCON reg) [cite: 168]
    
    PR2 = 0x7D;            // match value for TMR2 (125) at half cycle [cite: 168]
    TMR2ON = 1;            // Turns on Timer2 (T2CON reg) [cite: 169]

    for(;;) {
        
    }
}