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

uint8_t ledState = 0; 
void Timer0_1ms_IT(void);
void main(void) 
{
    Timer0_1ms_IT();
    TRISB = 0x00;
    while(1)
    {
        
    }
    return;
}

void Timer0_1ms_IT(void)
{
    GIE = 1; // global interrupt enable
    PEIE = 1; // peripheral interrupt enable
    TMR0IE = 1; // timer 0 interrupt enable
    
    T0CS = 0; // 0 Internal instruction cycle clock  1 Transition on T0CKI pin
    PSA = 0; // 1 = Prescaler is assigned to the WDT 0 = Prescaler is assigned to the Timer0 module 
  
    PS0 = 1;
    PS1 = 1;
    PS2 = 1;
    
    TMR0 = 236;
    
}

void __interrupt() TIMIRQ(void)
{
    if(TMR0IF == 1)
    {
        TMR0IF = 0;
        RB0 = ~RB0;
        TMR0 = 236;
    }
}
