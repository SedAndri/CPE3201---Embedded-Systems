#include <xc.h>

#define _XTAL_FREQ 4000000

// Define switch inputs (Assuming connected to PORTB)
#define SW1 RB0
#define SW2 RB1

void set_pwm(int freq_state, int duty_state) {
    unsigned char pr2_val;
    unsigned int duty_val;
    float duty_percent = 0.10;

    // Determine Duty Cycle Percentage
    switch(duty_state) {
        case 0: duty_percent = 0.10; break;
        case 1: duty_percent = 0.25; break;
        case 2: duty_percent = 0.50; break;
        case 3: duty_percent = 0.75; break;
        case 4: duty_percent = 0.95; break;
    }

    // Determine PR2 (Frequency)
    // Note: 10Hz and 100Hz are physically impossible at 4MHz with Timer2. 
    // They are capped at the max possible period (244Hz).
    switch(freq_state) {
        case 0: pr2_val = 0xFF; break; // "10Hz" limit cap (Actually ~244Hz)
        case 1: pr2_val = 0xFF; break; // "100Hz" limit cap (Actually ~244Hz)
        case 2: pr2_val = 0x3E; break; // 1000Hz -> PR2 = 62 (Prescaler 1:16)
    }

    // Calculate 10-bit duty cycle value
    duty_val = (unsigned int)((pr2_val + 1) * 4 * duty_percent);

    // Apply to registers
    PR2 = pr2_val;
    CCPR1L = (duty_val >> 2);
    CCP1CON = (CCP1CON & 0xCF) | ((duty_val & 0x03) << 4);
}

void main(void) {
    int f_state = 0; // 0=10Hz, 1=100Hz, 2=1000Hz
    int d_state = 0; // 0=10%, 1=25%, 2=50%, 3=75%, 4=95%

    TRISB = 0x03;    // SW1 and SW2 as inputs
    TRISC = 0x00;    // RC2 as output
    RC2 = 0;

    // Initialize PWM Module
    CCP1CON = 0x0C;  // PWM mode bits active
    T2CON = 0x06;    // Timer2 ON, 1:16 prescaler
    
    set_pwm(f_state, d_state); // Set defaults (10Hz/10%)

    for(;;) {
        // Check SW1 (Frequency)
        if (SW1 == 0) {
            __delay_ms(20); // Debounce
            if (SW1 == 0) {
                f_state = (f_state + 1) % 3;
                set_pwm(f_state, d_state);
                while(SW1 == 0); // Wait for release
            }
        }

        // Check SW2 (Duty Cycle)
        if (SW2 == 0) {
            __delay_ms(20); // Debounce
            if (SW2 == 0) {
                d_state = (d_state + 1) % 5;
                set_pwm(f_state, d_state);
                while(SW2 == 0); // Wait for release
            }
        }
    }
}                                   