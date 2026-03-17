#include<xc.h> // include file for the XC8 compiler 

//FLAG DECLARATION
bit myINTF = 0;
bit myTMR0IF = 0;
 
 #pragma config FOSC = XT // oscillator selection
 #pragma config WDTE = OFF // watchdog timer disabled
 #pragma config PWRTE = ON // power-up timer enabled
 #pragma config BOREN = ON // brown-out reset enabled
 #pragma config LVP = OFF // low-voltage programming disabled
 #pragma config CPD = OFF // data EEPROM code protection disabled
 #pragma config WRT = OFF // flash program memory write protection off
 #pragma config CP = OFF // code protection off

/*FUNC WILL BE CALLED IF AN INTERRUPT OCCURS; MUST BE CALLED "ISR" OR "interrupt" (BOTH WORK); 
MUST BE VOID; NO ARGUMENTS; CAN CHECK WHICH INTERRUPT OCCURRED BY CHECKING FLAGS INSIDE THE FUNC*/

/*GET ADDRESS THEN PUSH TO 8 LEVEL STACK; THEN CHECK FLAGS TO SERVICE APPROPRIATE INTERRUPT; 
THEN POP ADDRESS FROM STACK AND RETURN TO MAIN PROGRAM*/

/*IF UNCONTROLLED, UNEXPECTED INTERRUPT OCCURS, PROGRAM WILL CRASH (STACK OVERFLOW) BECAUSE THERE IS 
NO RETURN ADDRESS TO POP FROM STACK; THIS IS WHY WE MUST CLEAR FLAGS IN SOFTWARE TO PREVENT UNCONTROLLED INTERRUPTS*/

void interrupt ISR(){
   GIE = 0; // disable global interrupts to prevent nested interrupts (ALWAYS)
    //INTERRUPT BODY
//CHECK WHO GENERATED INTERRUPT BY CHECKING FLAGS; SERVICE APPROPRIATE INTERRUPT; CLEAR FLAG IN SOFTWARE TO PREVENT UNCONTROLLED INTERRUPTS
    if (INTF){ // IF RB0 GENERATED INTERRUPT; SPECIFICALLY FOR RBO
        INTF = 0; // CLEAR RB0 INTERRUPT FLAG IN SOFTWARE TO PREVENT UNCONTROLLED INTERRUPTS; DATASHEET INST: INTF MUST BE CLEARED IN SOFTWARE
        // TELLING CODE TO STOP N START COUNT
        /**
         * @brief Toggles the state of myINTF using bitwise XOR assignment operator.
         * 
         * This line executes each time an interrupt occurs. It uses the bitwise XOR 
         * assignment operator (^=) to toggle the least significant bit of myINTF 
         * between 0 and 1.
         * 
         * How it works:
         * - If myINTF is 0, XOR with 1 results in 1
         * - If myINTF is 1, XOR with 1 results in 0
         * 
         * Use case: Implements a multipurpose button that alternates between ON and OFF 
         * states with each interrupt trigger, useful for toggling functionality without 
         * tracking separate state variables.
         * 
         * Operator explanation:
         * - ^=  is the bitwise XOR assignment operator
         * - Equivalent to: myINTF = myINTF ^ 1
         * - XOR truth table: 0^1=1, 1^1=0 (flips the bit)
         */
        myINTF ^= 1; // ; every time it interrupts it sets to 1; BITWISE XOR ; FOR MULTIPURPOSE BUTTON : FOR ON AND OFF

    }
   else if (TMR0F){ // IF TIMER0 GENERATED INTERRUPT
        TMR0F = 0; // CLEAR TIMER0 INTERRUPT FLAG IN SOFTWARE TO PREVENT UNCONTROLLED INTERRUPTS; DATASHEET INST: TMR0F MUST BE CLEARED IN SOFTWARE
        // SERVICE TIMER0 INTERRUPT; IN THIS CASE, WE DON'T NEED TO DO ANYTHING BECAUSE WE ARE POLLING FOR THE FLAG IN MAIN LOOP; JUST CLEARING THE FLAG IS ENOUGH TO GENERATE ANOTHER INTERRUPT IN 1MS
    
    }

   GIE = 1; // re-enable global interrupts (ALWAYS)
}


    void delay (int cnt){
        int of_count = 0;

        while (of_count < cnt){
           //check if 1ms has elapsed by checking TMR0F; if it has, increment of_count and reset TMR0 to generate another interrupt in 1ms
            if (myTMR0IF){
              of_count++;
              myTMR0IF = 0; //RESET FLAG TO GENERATE ANOTHER INTERRUPT IN 1MS
            }

    }


 main (void)
 {
    unsigned char counter = 0x00; // COUNT VARIABLE TO TRACK SECONDS ELAPSED; declared as char to hold HEX values
    TRISB0 = 0xFF; // set RB0 as output
    TRISC0 = 0x00; // set RC0 as output

    //BOTH RB0 AND TIMER0
    OPTION_REG = 0xC4; //BY DOING THIS, WE ARE ALREADY CONFIG OPTION REG FOR RB0 AND TIMER0

    //RB INTERRUPT
    //INTEDG = 1; //OPTION REG ; REMOVED OPTION REG HERE SINCE WE HAVE ALREADY CONFIG OPTION REG FOR RB0 AND TIMER0 ABOVE
    INTF = 0; // clear RB0 interrupt flag
    INTE = 1;

    //TIMER0 INTERRUPT
    TMR0F = 0; // clear timer0 FLAG; MUST BE CLEARED IN SOFTWARE
    TMR0IE = 1; // enable timer0 interrupt
    
    // ENABLE ALL INTERRUPTS

    GIE = 1; // enable global interrupts

    PORTC = counter; //OUTPUT COUNT TO PORTC0

    // THE CODE ABOVE GENERATES AN INTERRUPT ALREADY W A BUTTON PRESS
    while(1){
        //main loop
        //service button press (INTERRUPT)
        if (!myINTF) // == 0 ; no action
        { 
            while (myINTF != 1)
            {//poll for button press; myINTF == 0
                
            }
        
            // higher prio to limit counting to 10 seconds; if button is pressed while counting, it will reset count to 0 instead of incrementing count
        else if (counter == 0x09) //COUNTING
        {
            counter = 0x00; //RESET COUNT
        }
        else //COUNTING
        {
            counter++; //INCREMENT COUNT
        }
        delay(122);// calculated delay; solution in module 
        PORTC = counter; //OUTPUT COUNT TO PORTC0
        //myINTF = 0; //RESET FLAG TO POLL FOR NEXT BUTTON PRESS
    }
 }
}