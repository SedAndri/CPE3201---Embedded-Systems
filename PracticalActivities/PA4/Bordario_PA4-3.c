#include <xc.h>

int period = 0;            // [cite: 270]

void interrupt ISR (void) {
    GIE = 0;               // disable all unmasked interrupts [cite: 271]
    if (CCP1IF == 1) {     // checks CCP1 interrupt flag [cite: 272]
        CCP1IF = 0;        // clears interrupt flag [cite: 279]
        
        // Reading 16-bit register correctly for XC8
        period = (CCPR1H << 8) | CCPR1L; 
        
        TMR1 = 0;          // resets TMR1 [cite: 281]
        period = period / 1000; // normalize the value (make the number smaller) [cite: 283]
        period = period * 8;    // multiply by the normalized TMR1 timeout [cite: 285]
        RA0 = RA0 ^ 1;             //test toggle RA0 on each capture event (for debugging) [cite: 287]
    }
    GIE = 1;               // enable all unmasked interrupts [cite: 287]
}

void main(void) {
    ADCON1 = 0x0F;          // set all pins to digital I/O [cite: 245]
    TRISA = 0x00;          // set all pins of PORTA to output [cite: 245]
    RA0 = 0;               // initialize RA0 to 0 (off) [cite: 246]      
    TRISC = 0x04;          // set RC2 to input [cite: 246]
    T1CON = 0x30;          // 1:8 prescaler, Timer1 off [cite: 247]
    CCP1CON = 0x05;        // capture mode: every rising edge [cite: 248]
    
    CCP1IE = 1;            // enable TMR1/CCP1 match interrupt (PIE1 reg) [cite: 249]
    CCP1IF = 0;            // reset interrupt flag (PIR1 reg) [cite: 250]
    PEIE = 1;              // enable all peripheral interrupt (INTCON reg) [cite: 251]
    GIE = 1;               // enable all unmasked interrupts (INTCON reg) [cite: 252]
    
    TMR1ON = 1;            // Turns on Timer1 (T1CON reg) [cite: 253]

    for(;;) {
        
    }
}