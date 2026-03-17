// Bordario, Sid Andre P.
// CPE3201
// 02/18/2026

#include<xc.h> // include file for the XC8 compiler 

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF
 
void main() 
{ 
    int cnt, i; 
	
	ADCON1 = 0x07;      // Configure all pins as digital I/O (important for PIC16F877A)
    TRISB = 0x00;     // all PORTB as output (LED on RB0)
    TRISA = 0xFF;     // all PORTA as input (RA0 is button)
    PORTB = 0x00;     // make sure LED is OFF initially

    for(;;) 
    { 
        // wait for button press (active high on RA0)
        if (RA0 == 1)
        {
            
            for(cnt = 0; cnt < 10000; cnt++);       // Simple debounce delay or use __delay_ms(100) if using XC8 built-in delay functions
            if (RA0 == 1)           // Check if button is still pressed after debounce
            {
                // blink LED 3 times
                for (i = 0; i < 3; i++)             
                {
                    PORTB = 0x01;              // LED ON
                    for(cnt = 0; cnt < 10000; cnt++); // delay or just use __delay_ms(1000) if using XC8 built-in delay functions
                    PORTB = 0x00;              // LED OFF
                    for(cnt = 0; cnt < 10000; cnt++); // delay or just use __delay_ms(1000)
                }

                // wait until button is released so it doesn't repeat
                while (RA0 == 1);
            }
        }
    } 
}