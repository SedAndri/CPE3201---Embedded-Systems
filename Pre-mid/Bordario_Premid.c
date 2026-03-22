#include <xc.h>

// Config bits
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

// Corrected to 4 MHz to match the XT oscillator config
#define _XTAL_FREQ 4000000

#define RS RB5
#define EN RB7
#define RW RB6

// Keypad encoding
#define KEY_CODE_0      0x0D
#define KEY_CODE_STAR   0x0C
#define KEY_CODE_HASH   0x0E

volatile unsigned int tmr0OvCount = 0;    // increments every Timer0 overflow
volatile unsigned char rb0ToggleReq = 0;  // set by INT ISR, handled in main loop
volatile unsigned char countingFlag = 0;  // 1 when free-running countdown is active
volatile unsigned char stoppedFlag = 1;   // 1 when timer is in a paused state (keypad can control)
volatile unsigned char keypadMode = 0;    // 0: idle, 1: '*' countdown mode, 2: '#' count-up mode
unsigned char counter = 0x0E;             

// Interrupt handler (supports XC8 v1 and v2 syntax)
#if defined(__XC8_VERSION) && (__XC8_VERSION >= 2000)
void __interrupt() ISR(void)
#else
void interrupt ISR(void)
#endif
{
    // External interrupt on RB0/INT: request toggle (debounce handled in main)
    if (INTE && INTF)
    {
        INTF = 0;
        rb0ToggleReq = 1;
    }

    // Timer0 overflow
    if (TMR0IE && TMR0IF)
    {
        TMR0IF = 0;
        tmr0OvCount++;
    }
}

void delay_ms(unsigned int ms)
{
    while(ms--)
        __delay_ms(1);
}

void instCtrl(unsigned char cmd)
{
    PORTC = cmd;     
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void dataCtrl(unsigned char data)
{
    PORTC = data;    
    RS = 1;
    RW = 0;
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

void delay(int count)
{
    unsigned int start = tmr0OvCount;
    while ((unsigned int)(tmr0OvCount - start) < (unsigned int)count)
    {
        ;
    }
}

void display_counter(unsigned char value)
{
    unsigned char tens = value / 10;
    unsigned char ones = value % 10;

    instCtrl(0x9B);
    dataCtrl('0' + tens);
    dataCtrl('0' + ones);
}

unsigned char read_keypad_code(void)
{
    // 74C922 Data Available (DA) is typically active-HIGH
    if (RD4 == 1)
    {
        unsigned char code = PORTD & 0x0F;   

        // Wait for DA to drop (key release)
        while (RD4 == 1);
        delay_ms(50);                        

        return code;
    }
    return 0xFF; 
}

void main(){
    TRISB = 0x01;    // RB0 input, rest output
    TRISC = 0x00;    // Output
    TRISD = 0x1F;    // Input
 
    // RB0 INT used to TOGGLE run/pause on each button press
    INTEDG = 1;      
    INTF = 0;        
    INTE = 1;        

    TMR0IF = 0;      
    TMR0IE = 1;      

    GIE = 1;         
    PORTC = 0x00;    

    initLCD();
    instCtrl(0xC6);   

    dataCtrl('T');
    dataCtrl('I');
    dataCtrl('M');
    dataCtrl('E');
    dataCtrl('R');
    
    instCtrl(0x9B);
    dataCtrl('1');
    dataCtrl('4');

    counter = 0x0E;
    countingFlag = 0;
    stoppedFlag = 1;
    keypadMode = 0;
    rb0ToggleReq = 0;
    tmr0OvCount = 0;
    
    OPTION_REG = 0xC4;  

    while(1){
        // Apply RB0 toggle requests from ISR
        if (rb0ToggleReq)
        {
            rb0ToggleReq = 0;

            countingFlag = !countingFlag;
            if (countingFlag)
            {
                stoppedFlag = 0;
                keypadMode = 0;
            }
            else
            {
                stoppedFlag = 1;
            }

            // Simple debounce
            delay_ms(120);
        }

        if (countingFlag && !stoppedFlag){
            delay(79);  

            if (counter > 0x00){
                counter--;           
            }
            else{
                counter = 0x0E;      
            }

            display_counter(counter);
        }
        else if (stoppedFlag){
            unsigned char key = read_keypad_code();

            if (key == KEY_CODE_0){
                counter = 0x0E;
                display_counter(counter);
                keypadMode = 0;
            }
            else if (key == KEY_CODE_STAR){
                keypadMode = 1;
            }
            else if (key == KEY_CODE_HASH){
                keypadMode = 2;
            }

            if (keypadMode == 1){
                delay(79);

                if (counter > 0x00){
                    counter--;
                }
                else{
                    counter = 0x0E;   
                    keypadMode = 0;   
                }
                display_counter(counter);
            }
            else if (keypadMode == 2){
                delay(79);

                unsigned char k2 = read_keypad_code();
                if (k2 == KEY_CODE_0){
                    counter = 0x0E;   
                    display_counter(counter);
                    keypadMode = 0;   
                }
                else{
                    counter++;        
                    display_counter(counter);
                }
            }
        }
    }
}