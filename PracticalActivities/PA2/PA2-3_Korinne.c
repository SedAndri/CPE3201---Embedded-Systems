
#include <xc.h> 

#pragma config FOSC = XT  // oscillator selection
#pragma config WDTE = OFF // watchdog timer disabled
#pragma config PWRTE = ON // power-up timer enabled
#pragma config BOREN = ON // brown-out reset enabled
#pragma config LVP = OFF  // low-voltage programming disabled
#pragma config CPD = OFF  // data EEPROM code protection disabled
#pragma config WRT = OFF  // flash program memory write protection off
#pragma config CP = OFF   // code protection off

void initLCD();
void instCtrl(unsigned char INST);
void delay(unsigned int ms);
void dataCtrl(unsigned char INST);

const char keypad[] = "123 456 789 *0# ";

#define LCD_LINE2 0xC0 // 20x4 Line 2 address
#define LCD_LINE3 0x94 // 20x4 Line 3 address
#define LCD_LINE4 0xD4 // 20x4 Line 4 address

int main(void) {
    // Hardware Initialization 
    TRISB = 0x00; // Set PORTB as output (LCD Data)
    TRISC = 0x00; // Set PORTC as output (LCD Control: RS=RC0, RW=RC2, E=RC1)
    TRISD = 0xFF; // Set PORTD as input (RD0-RD3: Keypad Data, RD4: DAVBL)

    initLCD();

    unsigned char charCount = 0; // Tracks the number of characters printed (0-79)
    unsigned char keyIndex;      // Stores the decoded keypad value

   
    while(1) {
        // Check if Data Available (DAVBL) pin is high indicating a key press
        if(RD4 == 1) { 
            
            // Read the lower 4 bits to get the 74C922 address
            keyIndex = PORTD & 0x0F; 
            
            // Wait for the key to be released
            while(RD4 == 1); 

            // Cursor Positioning & Screen Clear Logic (20x4 Setup) 
            switch(charCount) {
                case 20:
                    instCtrl(LCD_LINE2); // Wrap to Line 2
                    break;
                case 40:
                    instCtrl(LCD_LINE3); // Wrap to Line 3
                    break;
                case 60:
                    instCtrl(LCD_LINE4); // Wrap to Line 4
                    break;
                case 80:
                    instCtrl(0x01);      // LCD is full, clear display
                    delay(2);            // Give the clear command time to process
                    charCount = 0;       // Reset counter back to Line 1
                    break;
                default:
                    // If it hasn't hit the end of a line, do nothing
                    break;
            }

            // Print Character & Increment 
            dataCtrl(keypad[keyIndex]); // Send the mapped character to the LCD
            charCount++;
        }
    }

    return 0;
}

void instCtrl(unsigned char INST) {
    PORTB = INST;       // Send instruction to LCD data lines
    RC0 = 0;            // RS = 0 for instruction
    RC2 = 0;            // RW = 0 for write
    RC1 = 1;            // E = 1 to latch data
    delay(1);           // Short delay to meet LCD timing requirements
    RC1 = 0;            // E = 0 to complete the instruction cycle
}


void initLCD() {
    delay(1);
    instCtrl(0x38);     // Function Set: 8-bit, 2 Line, 5x7 Dots
    instCtrl(0x08);     // Display Off, Cursor Off, Blink Off
    instCtrl(0x01);     
    instCtrl(0x06); 
    instCtrl(0x0F); 
}

void dataCtrl(unsigned char INST) {
    PORTB = INST; 
    RC0 = 1;            // RS = 1 for data
    RC2 = 0;            // RW = 0 for write
    RC1 = 1;            // E = 1 to latch data
    delay(1);           // Short delay to meet LCD timing requirements
    RC1 = 0; 
}

void delay(unsigned int ms) {
    unsigned int i, j;
    for(i = 0; i < ms; i++) {
        for(j = 0; j < 1000; j++);
    }
}