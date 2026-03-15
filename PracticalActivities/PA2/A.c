// LE2-1.c
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

#define RS RC0
#define EN RC1

void delay_ms(unsigned int ms)
{
    while(ms--)
        __delay_ms(1);
}

void instCtrl(unsigned char cmd)
{
    RS = 0;          // Instruction mode
    PORTB = cmd;     // Send command
    EN = 1;
    __delay_ms(2);
    EN = 0;
    
}

void dataCtrl(unsigned char data)
{
    RS = 1;          // Data mode
    PORTB = data;    // Send character
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void initLCD()
{
    delay_ms(20);        // LCD startup delay

    instCtrl(0x38);      // Function set: 8-bit, 2 line
    instCtrl(0x08);      // Display OFF
    instCtrl(0x01);      // Clear display
    delay_ms(2);
    instCtrl(0x06);      // Entry mode: increment, no shift
    instCtrl(0x0E);      // Display ON, cursor ON, blink OFF
}

void main(void)
{
    TRISB = 0x00;   // PORTB output (LCD data)
    TRISC = 0x00;   // RC0, RC1 output

    PORTB = 0x00;
    PORTC = 0x00;

    initLCD();

    // Display "HELLO!" on 2nd line center
    instCtrl(0xC6);   // 2nd line, 7th column

    dataCtrl('H');
    dataCtrl('E');
    dataCtrl('L');
    dataCtrl('L');
    dataCtrl('O');
    dataCtrl('!');

    while(1);
}


// the quick brown fox jumps over the lazy dog
//