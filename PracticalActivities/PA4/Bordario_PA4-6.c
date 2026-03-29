#include <xc.h>
#include <stdio.h>
#include "lcd.h" // Assume standard LCD library is used in Proteus 

int period = 0;
int period_ready = 0;

void interrupt ISR (void) {
    GIE = 0;               
    if (CCP1IF == 1) {     
        CCP1IF = 0;        
        period = (CCPR1H << 8) | CCPR1L; 
        TMR1 = 0;          
        period = (period / 1000) * 8; // Normalize and scale 
        period_ready = 1;             // Flag main loop to update LCD
    }
    GIE = 1;               
}

void main(void) {
    char lcd_buffer[16];

    TRISC = 0x04;          
    T1CON = 0x30;          
    CCP1CON = 0x05;        
    
    Lcd_Init();            // Initialize LCD display
    Lcd_Clear();
    
    CCP1IE = 1;            
    CCP1IF = 0;            
    PEIE = 1;              
    GIE = 1;               
    TMR1ON = 1;            

    for(;;) {
        if (period_ready) {
            sprintf(lcd_buffer, "Period: %d ms", period);
            Lcd_Set_Cursor(1,1);
            Lcd_Write_String(lcd_buffer);
            period_ready = 0;
        }
    }
}