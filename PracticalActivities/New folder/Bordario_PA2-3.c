// LE2-3.c
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

// LCD control
#define RS RC0
#define EN RC1

// Keypad
#define DAVBL RD4

unsigned char cursorPos = 0;

void delay_ms(unsigned int ms)
{
    while(ms--)
        __delay_ms(1);
}

void instCtrl(unsigned char cmd)
{
    RS = 0;
    PORTB = cmd;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void dataCtrl(unsigned char data)
{
    RS = 1;
    PORTB = data;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void initLCD()
{
    delay_ms(20);

    instCtrl(0x38);
    instCtrl(0x08);
    instCtrl(0x01);
    delay_ms(2);
    instCtrl(0x06);
    instCtrl(0x0E);
}

char decodeKey(unsigned char key)
{
    const char table[16] = 
    {'1','2','3','A',
     '4','5','6','B',
     '7','8','9','C',
     '*','0','#','D'};

    return table[key];
}

void main(void)
{
    TRISB = 0x00;   // LCD data
    TRISC = 0x00;   // LCD control
    TRISD = 0x1F;   // Keypad inputs

    PORTB = 0x00;
    PORTC = 0x00;

    initLCD();

    unsigned char key;
    char displayChar;

    while(1)
    {
        if(DAVBL == 1)
        {
            key = PORTD & 0x0F;
            displayChar = decodeKey(key);

            dataCtrl(displayChar);
            cursorPos++;

            if(cursorPos >= 32)   // 16x2 LCD full
            {
                instCtrl(0x01);   // Clear display
                delay_ms(2);
                cursorPos = 0;
            }

            while(DAVBL == 1);  // Wait release
        }
    }
}