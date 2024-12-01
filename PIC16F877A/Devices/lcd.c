/*
 * File:   lcd.c
 * Author: anhnd
 *
 * Created on October 22, 2024, 2:19 PM
 */

#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)
#define _XTAL_FREQ 20000000
#include <xc.h>
//cac chan cua LCD duoc ket noi voi vi dieu khien
#define LCD_RS RD1       //RS noi vao RD1
#define LCD_EN RD0       //EN noi vao RD0
#define LCD_RW RD2       //EN noi vao RD2
#define LCD_D4 RD4       //D4 noi vao RD4
#define LCD_D5 RD5       //D5 noi vao RD5
#define LCD_D6 RD6       //D6 noi vao RD6
#define LCD_D7 RD7       //D7 noi vao RD7
#define LCD_TRIS TRISD                                
//------------------------------------------------------------------------------

const char so_hien_thi = 0;
int number = 0; // Example integer
char buffer[16]; // Buffer for string conversion
#include <stdio.h>
#include "lcd.h"
void main ()
{
TRISD = 0x00; //khai bao PORTD la ngo ra    
TRISC0 = 1;
TRISC1 = 1;
TRISC2 = 0;
LCD_Init();
LCD_Clear();
LCD_Gotoxy(0,0);
LCD_PutString("Welcome");
__delay_ms(2000);
LCD_Clear();
LCD_Gotoxy(0,0);
LCD_PutString("Let's choose:");
LCD_Gotoxy(1,0);
LCD_PutString("Button1/Button2");
//int number = 0; // Example integer
//char buffer[16]; // Buffer for string conversion
while (1) 
{   
    RC2 = 0;
    __delay_ms(1000);
    RC2 = 1;
    __delay_ms(1000);
    if (RC0==0)
    {
        LCD_Clear();
        LCD_Gotoxy(0,0);
        LCD_PutString("You choose"); 
        LCD_Gotoxy(1,0);
        LCD_PutString("happiness!");
    };
    if (RC1==0)
    {
        LCD_Clear();
        LCD_Gotoxy(0,0);
        LCD_PutString("You choose money!");
    };
}
return;
}