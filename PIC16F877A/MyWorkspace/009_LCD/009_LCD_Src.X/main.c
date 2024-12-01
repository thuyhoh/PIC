
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
#include "lcd.h"
#define _XTAL_FREQ 20000000

#define LCD_RS RD1       //RS noi vao RD1
#define LCD_EN RD0       //EN noi vao RD0
#define LCD_RW RD2       //EN noi vao RD2
#define LCD_D4 RD4       //D4 noi vao RD4
#define LCD_D5 RD5       //D5 noi vao RD5
#define LCD_D6 RD6       //D6 noi vao RD6
#define LCD_D7 RD7       //D7 noi vao RD7
#define LCD_TRIS TRISD 



void main(void) {
    
    LCD_Init();
    LCD_Clear();
    LCD_Gotoxy(0,0);
    LCD_PutString("hello");
    LCD_Gotoxy(1,0);
    LCD_PutString("welcome");
    
    while(1)
    {
        
    }
    return;
}
