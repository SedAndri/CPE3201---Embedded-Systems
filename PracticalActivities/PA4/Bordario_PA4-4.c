#include <xc.h>

void interrupt ISR (void) {
    GIE = 0;               // disable all unmasked interrupts [cite: 345]
    if (CCP1IF == 1) {     // checks CCP1 interrupt flag [cite: 346]
        CCP1IF = 0;        // clears interrupt flag [cite: 351]
        TMR1 = 0;          // *CORRECTION: Manually reset TMR1 to maintain frequency*
        RA0 = RA0 ^ 1;     // toggles the output signal at RA0 [cite: 353]
    }
    GIE = 1;               // enable all unmasked interrupts [cite: 356]
}

void main(void) {
    ADCON1 = 0x06;         // set all pins in PORTA as digital I/O [cite: 315]
    TRISA = 0x00;          // sets all of PORTA to output [cite: 316]
    RA0 = 0;               // initialize RA0 to 0 [cite: 317]
    
    T1CON = 0x20;          // 1:4 prescaler, Timer1 off [cite: 318]
    CCP1CON = 0x0A;        // compare mode: generate interrupt on match [cite: 319]
    
    CCP1IE = 1;            // enable TMR1/CCP1 match interrupt (PIE1 reg) [cite: 320]
    CCP1IF = 0;            // reset interrupt flag (PIR1 reg) [cite: 322]
    
    CCPR1H = 0x04;         // set the match value to TMR1 (0x4E2 split into H and L) [cite: 323]
    CCPR1L = 0xE2;         
    
    PEIE = 1;              // enable all peripheral interrupt (INTCON reg) [cite: 324]
    GIE = 1;               // enable all unmasked interrupts (INTCON reg) [cite: 325]
    
    TMR1ON = 1;            // Turns on Timer1 (T1CON reg) [cite: 326]

    for(;;) {
        // foreground routine [cite: 342]
    }
}