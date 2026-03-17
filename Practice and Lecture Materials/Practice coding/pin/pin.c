#include <xc.h>
#include <string.h> // Included for string comparison

#pragma config FOSC = XT  // Oscillator selection
#pragma config WDTE = OFF // Watchdog timer disabled
#pragma config PWRTE = ON // Power-up timer enabled
#pragma config BOREN = ON // Brown-out reset enabled
#pragma config LVP = OFF  // Low-voltage programming disabled
#pragma config CPD = OFF  // Data EEPROM code protection disabled
#pragma config WRT = OFF  // Flash program memory write protection off
#pragma config CP = OFF   // Code protection off

#define _XTAL_FREQ 20000000 // Required for __delay_ms() macro

void initLCD(void);
void instCtrl(unsigned char INST);
void dataCtrl(unsigned char INST);
void printString(const char *str);
void clearLCD(void);

// Keypad mapping based on reference (Spaces indicate unused/blank matrix intersections)
const char keypad[] = "123 456 789 *0# ";
const char correctPIN[] = "1234"; // Set your desired 4-digit PIN here

int main(void) {
    // Hardware Initialization 
    TRISB = 0x00; // Set PORTB as output (LCD Data)
    TRISC = 0x00; // Set PORTC as output (LCD Control: RS=RC0, RW=RC2, E=RC1)
    TRISD = 0xFF; // Set PORTD as input (RD0-RD3: Keypad Data, RD4: DAVBL)

    initLCD();

    unsigned char keyIndex;
    char enteredPIN[5]; // Buffer to store 4 entered digits + null terminator
    unsigned char pinCount = 0;

    while(1) {
        // Reset state for new entry
        clearLCD();
        printString("Enter PIN:");
        instCtrl(0xC0); // Move cursor to Line 2
        
        pinCount = 0;
        
        // Loop until 4 valid keys are pressed
        while(pinCount < 4) {
            
            // Check if Data Available (DAVBL) pin is high indicating a key press
            if(RD4 == 1) { 
                
                keyIndex = PORTD & 0x0F; // Read the lower 4 bits to get 74C922 address
                
                while(RD4 == 1); // Wait for the key to be released
                
                char keyChar = keypad[keyIndex];
                
                // Prevent recording unused mapped inputs (spaces)
                if(keyChar != ' ') {
                    enteredPIN[pinCount] = keyChar; // Store the digit
                    dataCtrl('*');                  // Display a masked character
                    pinCount++;
                }
            }
        }
        
        enteredPIN[4] = '\0'; // Null-terminate the string for comparison

        // Evaluate PIN
        clearLCD();
        if(strcmp(enteredPIN, correctPIN) == 0) {
            printString("Access Granted");
            // You can add logic here to unlock a door, turn on PORTA LEDs, etc.
        } else {
            printString("Access Denied");
        }
        
        // Hold the result on screen for 2 seconds before prompting again
        __delay_ms(2000); 
    }

    return 0;
}

// --- LCD Control Functions ---

void instCtrl(unsigned char INST) {
    PORTB = INST;       // Send instruction to LCD data lines
    RC0 = 0;            // RS = 0 for instruction
    RC2 = 0;            // RW = 0 for write
    RC1 = 1;            // E = 1 to latch data
    __delay_ms(1);      
    RC1 = 0;            // E = 0 to complete the instruction cycle
    __delay_ms(1);
}

void dataCtrl(unsigned char INST) {
    PORTB = INST; 
    RC0 = 1;            // RS = 1 for data
    RC2 = 0;            // RW = 0 for write
    RC1 = 1;            // E = 1 to latch data
    __delay_ms(1);      
    RC1 = 0; 
    __delay_ms(1);
}

void initLCD(void) {
    __delay_ms(15);     // Allow LCD to power up
    instCtrl(0x38);     // Function Set: 8-bit, 2 Line, 5x7 Dots
    instCtrl(0x0C);     // Display On, Cursor Off, Blink Off
    clearLCD();
    instCtrl(0x06);     // Entry Mode: Auto-increment cursor
}

void clearLCD(void) {
    instCtrl(0x01);     // Clear display
    __delay_ms(2);      // The clear command requires more execution time
}

void printString(const char *str) {
    while(*str) {
        dataCtrl(*str++);
    }
}