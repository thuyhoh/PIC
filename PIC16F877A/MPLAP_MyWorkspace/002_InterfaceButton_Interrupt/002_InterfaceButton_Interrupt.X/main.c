
// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = EXTRC     // Oscillator Selection bits (RC oscillator)
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



#include "stdint.h"
#define _XTAL_FREQ      20000000

uint8_t bnt_state = 0;

void main(void) 
{
    TRISB = 1; // rb0 -> input
    TRISC = 0;
    GIE = 1;       // set global interrupt enable
    INTE = 1;      // set external interrupt enable
    INTEDG = 1;    // 1 = rising edge, 0 = falling edge 
    while(1)
    {
        if(bnt_state == 0)
        {
            RC0 = 1;
        }else
        {
            RC0 = 0;
            __delay_ms(1000);
            RC0 = 1;
            __delay_ms(1000);
        }
    }
    return;
}

void __interrupt() ExINT(void)
{
    if(INTF == 1)
    {
        INTF = 0;
        bnt_state = bnt_state ? 0 :  1; 
    }
}

