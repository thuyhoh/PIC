// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#define _XTAL_FREQ      20000000

void Timer2_1ms_IT_init(void);
void delay_ms(uint32_t ms);
void delay_1ms(void);


void main(void) 
{
    TRISB0 = 0;
    RB0 = 0;
    Timer2_1ms_IT_init();

    while(1)
    {

    }
    return;
}

void Timer2_1ms_IT_init(void)
{
    // prescaler 1:16
    T2CKPS0 = 1;
    T2CKPS1 = 1;
    // postscaler 1:16
    TOUTPS0 = 1;
    TOUTPS1 = 1;
    TOUTPS2 = 1;
    TOUTPS3 = 1;
    GIE = 1;
    PEIE = 1;
    TMR2IE = 1; 
    TMR2ON = 1; // timer2 on
    // TMR2 -> PR2 -> 0
    /*
     * t = 4*psc*pos/Fsos
     */
    TMR2 = 0;
    PR2 = 19;
}



void __interrupt() tim2(void)
{
    if(TMR2IF == 1)
    {
        TMR2IF = 0;
        RB0 = ~RB0;
    }
}

