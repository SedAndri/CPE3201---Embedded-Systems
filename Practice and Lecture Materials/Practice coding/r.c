#include<xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

bit myINTF = 0;
bit myTMR0IF = 0;

void delay (int count)
{
	int overflow_count = 0;
	while(overflow_count < count)
	{
		if (myTMR0IF == 1)
		{
			overflow_count++;
			myTMR0IF = 0;
		}
	}		
}

void interrupt ISR()
{
	GIE =0;
	if(INTF == 1)
	{

		myINTF = ~myINTF;
		INTF=0;			
	}
	else if (TMR0IF == 1)
	{
		TMR0IF = 0;
		myTMR0IF = 1;
	}
		
	GIE = 1;
}
 
void main(void)
{
	TRISB = 0xFF;
	TRISC = 0X00;
	INTE = 1; //enable RB0 as interrupt
	INTF =0; //Clear meaning no interrupt occured
	OPTION_REG = 0XC4;
	
	TMR0IF = 0;
	TMR0IE = 1;
	GIE = 1;
	PORTC =0X00;
	 while (1) 
	 {
		if (myINTF == 1)
		{
			PORTC = ~PORTC;
			delay(122);//number of overflows to get 1s delay
		}

	 }	 
} 