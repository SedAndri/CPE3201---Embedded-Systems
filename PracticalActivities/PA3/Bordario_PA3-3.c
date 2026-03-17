#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

bit myINTF = 0;         // Flag to indicate external interrupt occurrence
bit myTMR0IF = 0;       // Flag to indicate Timer0 overflow occurrence
unsigned char counter = 0x00;  // Counter variable to hold the current count value for display on PORTC

void interrupt ISR (){
    GIE = 0;            // Disable global interrupts to prevent nested interrupts
    if(INTF){
        INTF = 0;  
        // Handle external interrupt from keypad on PORTD
        // Read key value and update PORTC display + counter variable
        if(PORTD == 0x00) { PORTC = 0x01; counter = 0x01; }
        // ... more key mappings ...
        else if(PORTD == 0x0D) { PORTC = 0x00; counter = 0x00; }

    } else if(TMR0IF){
        TMR0IF = 0;
        myTMR0IF = 1;   // Signal delay() function that Timer0 overflowed
    }
    GIE = 1;            // Re-enable global interrupts
}

/**
 * @brief Delays program execution by polling Timer0 overflow interrupts.
 * 
 * This function implements a blocking delay mechanism by counting Timer0 overflow
 * occurrences. It continuously monitors the Timer0 overflow flag (myTMR0IF) and
 * increments a counter each time an overflow is detected, then clears the flag.
 * The function blocks until the specified number of overflows has occurred.
 * 
 * @param count The number of Timer0 overflow cycles to wait for before returning.
 *              Each overflow represents one complete Timer0 cycle.
 * 
 * @note This is a busy-wait (polling) implementation and will consume CPU cycles
 *       while waiting. The actual delay duration depends on the Timer0 frequency
 *       and prescaler settings.
 * 
 * @warning This function assumes myTMR0IF is a volatile global variable or macro
 *          that reflects the current Timer0 overflow flag status.
 */
void delay(int count){
    int of_count = 0;           // Overflow count to track the number of Timer0 overflows
    while (of_count < count){   // Loop until the desired number of overflows has occurred
        if (myTMR0IF){          // Check if Timer0 has overflowed
            of_count++;         // Increment overflow count
            myTMR0IF = 0;       // Clear the Timer0 overflow flag for the next cycle
        }
    }
}

/**
 * @brief Main program entry point for embedded system counter display
 * 
 * Initializes the microcontroller ports, timer, and interrupts to create
 * a counting system that displays values 0-9 on PORTC with a delay between counts.
 * 
 * Configuration Details:
 * - TRISA (0x00): Port A configured as output
 * - TRISB (0xFF): Port B configured as input
 * - TRISC (0x00): Port C configured as output (used for display)
 * - TRISD (0xFF): Port D configured as input
 * 
 * Interrupt Setup:
 * - OPTION_REG (0xC4): Configures timer prescaler and edge detection
 * - INTEDG: Set to 1 for rising edge (low-to-high) detection on INT pin
 * - INTF: Interrupt flag for external INT - manually cleared by software
 * - INTE: External interrupt enable
 * - TMR0IE: Timer0 overflow interrupt enabled
 * - TMR0IF: Timer0 overflow flag cleared
 * - GIE: Global interrupt enable activated
 * 
 * Main Loop Behavior:
 * - Increments counter from 0 to 9, then rolls back to 0
 * - Displays current counter value on PORTC
 * - Applies 79ms delay between increments using delay() function
 * 
 * @note Global interrupts must be enabled last to prevent premature ISR execution
 * @note Counter display cycles continuously: 0→1→2→...→9→0
 */
void main(){
    TRISA = 0X00;
    TRISB = 0xFF;
    TRISC = 0x00;    // Output
    TRISD = 0XFF;    // Input
    
    OPTION_REG = 0xC4;   // Prescaler 1:32 for Timer0, interrupt on rising edge for INT 
    
    INTEDG = 1;      // Low to high edge
    INTF = 0;        // Interrupt flag bit (must be manually cleared)
    INTE = 1;        // Interrupt enable bit

    TMR0IF = 0;      // Timer0 flag bit
    TMR0IE = 1;      // Timer0 enable bit

    GIE = 1;         // Enable global interrupts after everything is set
    PORTC = 0X00;    // Initialize display

    while(1){
        if(counter == 0x09){        // If counter reaches 9, reset to 0
            counter = 0x00;         // Reset counter
        }
        else{
            counter++;
        }
        delay(79);      // Delay for approximately 79ms (adjust based on Timer0 settings)
        PORTC = counter;        // Update PORTC with the current counter value
    }
}