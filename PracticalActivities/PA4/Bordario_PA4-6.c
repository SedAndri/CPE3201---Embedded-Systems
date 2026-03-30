#include <xc.h>

#pragma config FOSC = XT  
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF  
#pragma config CPD = OFF  
#pragma config WRT = OFF  
#pragma config CP = OFF   

#define _XTAL_FREQ 4000000UL   

volatile int period = 0;
volatile int period_ready = 0;

void delay(unsigned int ms);
void instCtrl(unsigned char INST);
void dataCtrl(unsigned char INST);
void initLCD(void);

void Lcd_Init(void);
void Lcd_Clear(void);
void Lcd_Set_Cursor(unsigned char row, unsigned char col);
void Lcd_Write_String(const char *str);
void Lcd_Write_Integer(int num);

void delay(unsigned int ms) {
    while (ms--) {
        __delay_ms(1);
    }
}

// Reverted to XC8 v1.33 correct interrupt syntax
void interrupt ISR(void) {
    if (CCP1IF == 1) {     
        CCP1IF = 0;        
        period = (CCPR1H << 8) | CCPR1L; 
        TMR1 = 0;          
        
        period = (int)(((unsigned long)period * 8) / 1000); 
        period_ready = 1;  
    }
}

void instCtrl(unsigned char INST) {
    PORTB = INST;       
    RD0 = 0;            
    RD2 = 0;            
    RD1 = 1;            
    delay(1);           
    RD1 = 0;            
}

void initLCD(void) {
    delay(1);
    instCtrl(0x38);     
    instCtrl(0x08);     
    instCtrl(0x01);     
    instCtrl(0x06);     
    instCtrl(0x0F);     
}

void dataCtrl(unsigned char INST) {
    PORTB = INST; 
    RD0 = 1;            
    RD2 = 0;            
    RD1 = 1;            
    delay(1);           
    RD1 = 0; 
}

void Lcd_Init(void) {
    initLCD();
}

void Lcd_Clear(void) {
    instCtrl(0x01);     
    delay(2);
}

void Lcd_Set_Cursor(unsigned char row, unsigned char col) {
    unsigned char address;
    if (row == 1) {
        address = 0x80 + (col - 1);   
    } else {
        address = 0xC0 + (col - 1);   
    }
    instCtrl(address);
}

void Lcd_Write_String(const char *str) {
    while (*str) {
        dataCtrl(*str++);
    }
}

// Lightweight function to replace sprintf
void Lcd_Write_Integer(int num) {
    char buffer[6]; 
    int i = 0;

    if (num == 0) {
        dataCtrl('0');
        return;
    }

    if (num < 0) {
        dataCtrl('-');
        num = -num;
    }

    while (num != 0) {
        buffer[i++] = (num % 10) + '0';
        num = num / 10;
    }

    while (i > 0) {
        dataCtrl(buffer[--i]);
    }
}

void main(void) {
    TRISC = 0x04;        
    TRISB = 0x00;        
    TRISD = 0x00;        
    
    PORTB = 0x00;
    PORTD = 0x00;

    T1CON = 0x30;        
    CCP1CON = 0x05;      
    
    Lcd_Init();          
    Lcd_Clear();
    
    CCP1IE = 1;            
    CCP1IF = 0;            
    PEIE = 1;              
    GIE = 1;               
    
    TMR1ON = 1;          

    for(;;) {
        if (period_ready) {
            int safe_period;
            
            CCP1IE = 0; 
            safe_period = period;
            CCP1IE = 1; 
            
            Lcd_Set_Cursor(1,1);
            Lcd_Write_String("Period: ");
            Lcd_Write_Integer(safe_period);
            Lcd_Write_String(" ms  "); // Extra spaces to overwrite old characters
            
            period_ready = 0;
        }
    }
}