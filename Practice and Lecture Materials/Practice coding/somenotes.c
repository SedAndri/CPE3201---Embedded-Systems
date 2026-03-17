#include <xc.h>

void main(void)
{
    /* we can use TRISXbits.TRISXN to configure specific I/O pins */ 
    TRISAbits.TRISA0 = 1; // Configure RA0 as Input (Sensor)
    TRISBbits.TRISB7 = 0; // Configure RB7 as Output (LED)
    PORTBbits.RB7 = 0;    // Ensure LED is initially OFF

    while (1)
    {
        // <insert code here>
        /* we can use PORTXbits.PORTXN to read from or write to specific I/O pins    */
        if (PORTAbits.RA0 == 1) // If sensor is triggered
        {
            PORTBbits.RB7 = 1;  // Turn ON LED
            __delay_ms(1000);   // Keep it on for a short while (e.g., 1000ms)
            PORTBbits.RB7 = 0;  // Turn OFF LED
        }
    }
}


/*my shit from 21

void main(void)
{
    // <IO configuration here>
    TRISA = 0x01; // Configure RA0 as Input (binary: 0000 0001)
    TRISB = 0x00; // Configure all PORTB pins as Output
    PORTB = 0x00; // Ensure all PORTB pins (including LED) are initially OFF

    while (1)
    {
        // <insert code here>
        if (RA0 == 1) 
        {
            PORTB = 0x80;        // Turn ON RB7 (binary: 1000 0000)
            __delay_ms(1000);    // Keep it on for a short while (assuming a 1-second delay)
            PORTB = 0x00;        // Turn OFF RB7
        }
    }
}
*/

/* my shi for 22

void main(void)
{
    int i; // Declare loop counter

    // <IO configuration here>
    TRISA = 0x08; // Configure RA3 as Input (binary: 0000 1000)
    TRISC = 0x00; // Configure all PORTC pins as Output
    PORTC = 0x00; // Ensure LED on RC0 is initially OFF

    while (1)
    {
        // <insert code here>
        if (RA3 == 0) // Check if the active-low switch is pressed
        {
            for (i = 0; i < 2; i++)
            {
                PORTC = 0x01;      // Turn ON RC0
                __delay_ms(500);   // Keep it on for 500ms
                PORTC = 0x00;      // Turn OFF RC0
                __delay_ms(500);   // Keep it off for 500ms to complete the blink
            }
            
            // Optional: Wait for the button to be released so it doesn't 
            // continuously trigger the blink sequence if held down.
            while (RA3 == 0); 
        }
    }
}
*/


/* idk what 25 wants
// If Switch 1 is pressed
if (SW1 == 1) 
{
    LED1 = 1; // Turn LED 1 ON
    LED2 = 0; // Force LED 2 OFF
}

// If Switch 2 is pressed
if (SW2 == 1) 
{
    LED2 = 1; // Turn LED 2 ON
    LED1 = 0; // Force LED 1 OFF
}
*/