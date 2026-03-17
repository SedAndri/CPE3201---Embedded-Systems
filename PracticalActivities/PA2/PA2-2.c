// LE2-2.c
#include <xc.h>

#pragma config FOSC = XT     
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

#define _XTAL_FREQ 20000000

#define DAVBL RD4

void main(void)
{
    TRISD = 0x1F;   // RD4 input (DAVBL), RD3-RD0 input
    TRISA = 0x00;   // RA3-RA0 output (LEDs)

    PORTA = 0x00;

    unsigned char key;      // Variable to store the decoded key value

    while(1)                // infinite loop to continuously check for key presses 
    {
        if(DAVBL == 1)      // If key pressed
                            //DAVBL is DA pin on 922
        {
            key = PORTD & 0x0F;   // Read 4-bit key data

            if(key == 0x0C || key == 0x0E) // * or #
                PORTA = 0x0F;     // Display 1111
            else
                PORTA = key;      // Display key value

            while(DAVBL == 1);    // Wait for release
        }
    }
}