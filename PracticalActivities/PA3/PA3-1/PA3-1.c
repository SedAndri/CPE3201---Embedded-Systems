#include <xc.h> 

#pragma config FOSC = XT  // oscillator selection
#pragma config WDTE = OFF // watchdog timer disabled
#pragma config PWRTE = ON // power-up timer enabled
#pragma config BOREN = ON // brown-out reset enabled
#pragma config LVP = OFF  // low-voltage programming disabled
#pragma config CPD = OFF  // data EEPROM code protection disabled
#pragma config WRT = OFF  // flash program memory write protection off
#pragma config CP = OFF   // code protection off

#define _XTAL_FREQ 4000000 

void main(void)
 {
   // Write your code here
   TRISB = 0x01;
   TRISC = 0x00;
   TRISD = 0x0F;
    
    
   INTEDG = 1;
   INTE = 1;
   INTF = 0;
   GIE = 1;
   PORTC = 0x00;    
   while (1)
      ;
 }

void interrupt ISR() {
     GIE = 0;
     unsigned char key;

    if(INTF) {
       key = PORTD & 0x0F;
       switch(key){
                case 0x00: PORTC = 0x01; break;
                case 0x01: PORTC = 0x02; break;
                case 0x02: PORTC = 0x03; break;
                case 0x04: PORTC = 0x04; break;
                case 0x05: PORTC = 0x05; break;
                case 0x06: PORTC = 0x06; break;
                case 0x08: PORTC = 0x07; break;
                case 0x09: PORTC = 0x08; break;
                case 0x0A: PORTC = 0x09; break;
                case 0x0C: PORTC = 0x00; break;
                case 0x0D: PORTC = 0x00; break;
                case 0x0E: PORTC = 0x00; break;
            }
       INTF = 0;
    }
    GIE = 1;
}