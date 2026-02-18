#include <xc.h>

// CONFIG
#pragma config FOSC = HS        // High-speed crystal/resonator
#pragma config WDTE = OFF       // Watchdog Timer disabled
#pragma config PWRTE = ON       // Power-up Timer enabled
#pragma config BOREN = OFF      // Brown-out Reset disabled
#pragma config LVP = OFF        // Low-Voltage Programming disabled
#pragma config CPD = OFF        // Data EEPROM Code Protection off
#pragma config WRT = OFF        // Flash Program Memory Write Enable off
#pragma config CP = OFF         // Flash Program Memory Code Protection off

#define _XTAL_FREQ 4000000UL    // 4 MHz crystal

void main(void) {
    // Configure RB0 as output
    TRISBbits.TRISB0 = 0;   // RB0 = output
    PORTBbits.RB0 = 0;      // LED off initially

    while (1) {
        PORTBbits.RB0 = 1;  // LED on
        __delay_ms(500);

        PORTBbits.RB0 = 0;  // LED off
        __delay_ms(500);
    }
}
