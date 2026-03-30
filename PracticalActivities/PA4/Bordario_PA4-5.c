#include <xc.h>

void main(void) {
    /* following the steps in setting up PWM */

    PR2 = 0x7C;            // set value for PR2
    CCPR1L = 0x57;         // set value for (8 MSBS)
    
    // *CORRECTION: The document states 0x2, but PWM requires 11xx in bits 3:0. 
    // Applying the calculated 10_2 for bits <5:4> makes the correct value 0x2C.*
    CCP1CON = 0x2C;        
    
    TRISC = 0x00;          // sets all of PORTC (RC2) to output
    RC2 = 0;               // initialize RC2 to 0
    T2CON = 0x06;          // 1:16 prescaler, Timer2 on

    for(;;) {
        // foreground routine
    }
}