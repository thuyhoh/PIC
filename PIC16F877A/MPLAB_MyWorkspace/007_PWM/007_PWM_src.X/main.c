#include <pic16f877a.h>
#include <xc.h>

// Define the frequency of the external crystal oscillator
#define _XTAL_FREQ 4000000  // 20MHz external crystal oscillator frequency
#define PRESCALE_VAL 16
// Configuration bits
#pragma config FOSC = HS    // High-Speed Crystal oscillator
#pragma config WDTE = OFF   // Watchdog Timer disabled
#pragma config PWRTE = OFF  // Power-up Timer disabled
#pragma config BOREN = OFF  // Brown-out Reset disabled
#pragma config LVP = OFF    // Low-Voltage Programming disabled
#pragma config CPD = OFF    // Data memory code protection off
#pragma config WRT = OFF    // Flash Program Memory Write protection off
#pragma config CP = OFF     // Flash Program Memory Code protection off
float PWM_FREQ;
float PWM_PERIOD;
void init_pwm(unsigned int f){
    //Set Prescaler to 16
    T2CONbits.T2CKPS = 0b11;
    //Turn on TMR2
    TMR2ON =  1;
    //Set CCP Module to PWM mode
    CCP1CONbits.CCP1M = 0b1100;
    //Calculate PR2
//    float PR2_value = _XTAL_FREQ/(4*f*PRESCALE_VAL) - 1;
//    PR2 = (unsigned char) PR2_value;
    PWM_FREQ = f;
    PWM_PERIOD = 1 / PWM_FREQ;
    int PR2_value = ((PWM_PERIOD * _XTAL_FREQ) / (4 * PRESCALE_VAL) - 1);
    PR2 = PR2_value;
}
void set_duty_cycle_percent(unsigned int duty_cycle){
    float dc = (float) duty_cycle / 100;
    float dc_period = dc * PWM_PERIOD; 
    int reg_value = (int) ((dc_period * _XTAL_FREQ) / PRESCALE_VAL);
    /*
     * PWM has 10 bit resolution
     * 8 bits of MSB is stored in CCPR1L
     * 2 bits of LSB is stored in CCP1CON(5:4)
     */
    CCPR1L = reg_value >> 2; 
    CCP1CONbits.CCP1X = (reg_value & 0b00000001);
    CCP1CONbits.CCP1Y = (reg_value & 0b00000010);
}
void main()
{
    // Initializing PWM in PIC16F877A
    TRISC2 = 0;
    init_pwm(1000);

    set_duty_cycle_percent(85);
    while (1)
    {
    }
}