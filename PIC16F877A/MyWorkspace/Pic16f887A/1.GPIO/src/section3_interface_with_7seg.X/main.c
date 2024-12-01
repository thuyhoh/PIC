/*
 * File:   main.c
 * Author: PC
 *
 * Created on December 18, 2023, 10:25 AM
 */


// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#define _XTAL_FREQ 20000000

int _7seg[] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
int count = 0;
int so = 15;

void time0_init()
{
    GIE = 1;
    TMR0IE = 1;
    T0CS = 0;
    PSA = 0;
    PS2 = 1;
    PS1 = 1;
    PS0 = 1;
    TMR0 = 236;
}
void __interrupt() ISR(void)
{
    if(TMR0IF == 1)
    {
        TMR0IF = 0; TMR0 = 236;
        if(RB0 == 0)
        {
            RB1 = 1;
            
        }
        if(RB1 == 1)
        {
            if(count < 15000)
            {
                RB1 = 1;
                if(count % 1000 == 0){
                    so--;
                    if(so < 0)
                    {
                        so = 15;
                    }
                }
                count++;
            }
            else {
                count = 0;
                RB1 = 0;
            }
        }
    }
}
void display(int so)
{
    int chuc, dovi;
    chuc = so/10;
    dovi = so%10;
    RB2 = 1; RB3 =0;
    PORTD = _7seg[dovi];
    __delay_ms(10);
    RB2 = 0; RB3 =1;
    PORTD = _7seg[chuc];
    __delay_ms(10);
    
}
void main(void) {
    TRISD = 0x00;
    TRISB0 = 1;
    TRISB1 = TRISB2 = TRISB3 = 0;
    int i = 0;
    while(1){
        display(15);
    }
    return;
}
