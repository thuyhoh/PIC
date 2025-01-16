/* 
 * File:   lcd.h
 * Author: Asus
 *
 * Created on November 12, 2024, 8:56 PM
 */

#ifndef LCD_H
#define	LCD_H

#include "main.h"

#ifdef	__cplusplus
extern "C" {
#endif

void LCD_Enable(void);
void LCD_Send4Bit( unsigned char data);
void LCD_SendCommand (unsigned char command );
void LCD_Init (void);
void LCD_PutChar (unsigned char data);
void LCD_PutString (char *s);
void LCD_Clear(void) ;
void LCD_Gotoxy(unsigned char row, unsigned char col);


#ifdef	__cplusplus
}
#endif

#endif	/* LCD_H */

