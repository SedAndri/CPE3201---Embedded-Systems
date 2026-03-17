// from PA1 -> blinks an LED connected to RC0 every time a button connected to RD0 is pressed

// Bordario, Sid Andre P.
// CPE3201
// 02/18/2026

#include<xc.h> 

#pragma config FOSC = XT          // Oscillator: XT (external crystal/resonator)
#pragma config WDTE = OFF         // Watchdog Timer: disabled
#pragma config PWRTE = ON         // Power-up Timer: enabled for stable startup
#pragma config BOREN = ON         // Brown-out Reset: enabled to protect against voltage drops
#pragma config LVP = OFF          // Low-Voltage Programming: disabled for normal operation
#pragma config CPD = OFF          // Data memory Code Protect: disabled
#pragma config WRT = OFF          // Flash Write Protect: disabled to allow code updates
#pragma config CP = OFF           // Program memory Code Protect: disabled
 
void main() 
{ 
    int cnt, i; 
	
	ADCON1 = 0x07;      // Configure all pins as digital I/O (important for PIC16F877A)
    TRISB = 0x00;       // all PORTB as output (LED on RB0)
    TRISA = 0xFF;       // all PORTA as input (RA0 is button)
    PORTB = 0x00;       // make sure LED is OFF initially

    for(;;)             // infinite loop, can also be while(1)
    { 
        // wait for button press (active high on RA0)
        if (RA0 == 1)   
        {
            
            for(cnt = 0; cnt < 10000; cnt++);
            if (RA0 == 1)
            {
                // blink LED 3 times
                for (i = 0; i < 3; i++)
                {
                    PORTB = 0x01;              // LED ON
                    for(cnt = 0; cnt < 10000; cnt++); // delay
                    PORTB = 0x00;              // LED OFF
                    for(cnt = 0; cnt < 10000; cnt++); // delay
                }

                // wait until button is released so it doesn't repeat
                while (RA0 == 1);
            }
        }
    } 
}