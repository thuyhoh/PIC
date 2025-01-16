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
#define _XTAL_FREQ      200000
void Timer0_1s_init(void);
void delay_1s(void);
void delay_s(uint32_t s);
void main(void) {
    Timer0_1s_init();
    TRISB0 = 0;
    while(1)
    {
        RB0 = ~RB0;
        delay_s(1);
    }
    return;
}

void delay_1s(void)
{
    while(TMR0IF != 1);
    TMR0IF = 0;
    TMR0 = 59; // 1s
}

void delay_s(uint32_t s)
{
    while(s)
    {
        delay_1s();
        s--;
    }
}

void Timer0_1s_init(void)
{
    T0CS = 0; // 0 Internal instruction cycle clock  1 Transition on T0CKI pin
    PSA = 0; // 1 = Prescaler is assigned to the WDT 0 = Prescaler is assigned to the Timer0 module 
  
    PS0 = 1;
    PS1 = 1;
    PS2 = 1;
    /*
     * 4*PSC*(0XFF - TMR0)/Fosc = ts
     * PSC  : bo chia 
     * TMR0 : gia tri ghi vao TMR0(8bit)
     * Fosc : tan so cap cho vdk
     * ts   : thoi gian muon tinh toan 
     */
    TMR0 = 59; // 1s
}
