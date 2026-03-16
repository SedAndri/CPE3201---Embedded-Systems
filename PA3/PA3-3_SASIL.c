#include<xc.h> // include file for the XC8 compiler 

//FLAG DECLARATION
bit myTMR0IF = 0; // flag for timer0 overflow
 
#pragma config FOSC = XT // oscillator selection
#pragma config WDTE = OFF // watchdog timer disabled
#pragma config PWRTE = ON // power-up timer enabled
#pragma config BOREN = ON // brown-out reset enabled
#pragma config LVP = OFF // low-voltage programming disabled
#pragma config CPD = OFF // data EEPROM code protection disabled
#pragma config WRT = OFF // flash program memory write protection off
#pragma config CP = OFF // code protection off

//GLOBAL VARIABLES
unsigned char current_count = 0x00; // COUNT VARIABLE TO TRACK SECONDS ELAPSED

//FUNC WILL BE CALLED IF AN INTERRUPT OCCURS
void interrupt ISR(){
    GIE = 0; // disable global interrupts to prevent nested interrupts (ALWAYS)
    
    //CHECK WHO GENERATED INTERRUPT BY CHECKING FLAGS
    if (INTF){ // IF RB0 GENERATED INTERRUPT; SPECIFICALLY FOR KEYPAD PRESS
        unsigned char key = PORTD & 0x0F;
        
        // DECODE KEYPAD TO NUMERIC VALUE
        switch(key){
            case 0x00: current_count = 0x01; break;
            case 0x01: current_count = 0x02; break;
            case 0x02: current_count = 0x03; break;
            case 0x04: current_count = 0x04; break;
            case 0x05: current_count = 0x05; break;
            case 0x06: current_count = 0x06; break;
            case 0x08: current_count = 0x07; break;
            case 0x09: current_count = 0x08; break;
            case 0x0A: current_count = 0x09; break;
            case 0x0D: current_count = 0x00; break;
        }
        
        PORTC = current_count; // UPDATE DISPLAY IMMEDIATELY
        INTF = 0; // CLEAR RB0 INTERRUPT FLAG IN SOFTWARE TO PREVENT UNCONTROLLED INTERRUPTS
    }
    else if (TMR0IF){ // IF TIMER0 GENERATED INTERRUPT
        TMR0IF = 0; // CLEAR TIMER0 INTERRUPT FLAG IN SOFTWARE
        myTMR0IF = 1; // SET CUSTOM FLAG TO 1 TO INDICATE OVERFLOW FOR DELAY FUNC
    }

    GIE = 1; // re-enable global interrupts (ALWAYS)
}

void delay (int cnt){
    int of_count = 0;

    while (of_count < cnt){
        //check if overflow has occurred by checking myTMR0IF
        if (myTMR0IF){
            of_count++;
            myTMR0IF = 0; //RESET FLAG TO WAIT FOR NEXT OVERFLOW
        }
    }
}

main (void)
{
    // I/O Configurations
    ADCON1 = 0x06; // configure PORTA as digital I/O
    TRISB = 0x01;  // set RB0 as input for external interrupt
    TRISC = 0x00;  // set PORTC as output for 7-segment display
    TRISD = 0x0F;  // set PORTD lower nibble as input for Keypad
    
    PORTC = current_count; // INITIALIZE PORTC DISPLAY
    
    //BOTH RB0 AND TIMER0
    // 0xC4 sets INTEDG=1 (rising edge), T0CS=0 (internal clock), PSA=0, PS2:PS0=100 (1:32 prescaler)
    OPTION_REG = 0xC4; //BY DOING THIS, WE ARE ALREADY CONFIG OPTION REG FOR RB0 AND TIMER0

    //RB INTERRUPT
    INTF = 0; // clear RB0 interrupt flag
    INTE = 1; // enable RB0 interrupt

    //TIMER0 INTERRUPT
    TMR0IF = 0; // clear timer0 FLAG; MUST BE CLEARED IN SOFTWARE
    TMR0IE = 1; // enable timer0 interrupt
    
    // ENABLE ALL INTERRUPTS
    GIE = 1; // enable global interrupts

    while(1){
        //main loop
        PORTC = current_count; //OUTPUT COUNT TO PORTC
        
        delay(98); // calculated delay for 0.8s
        
        // COUNTING LOGIC (0 to 9)
        if (current_count >= 0x09) 
        {
            current_count = 0x00; //RESET COUNT AFTER 9
        }
        else 
        {
            current_count++; //INCREMENT COUNT
        }
    }
}