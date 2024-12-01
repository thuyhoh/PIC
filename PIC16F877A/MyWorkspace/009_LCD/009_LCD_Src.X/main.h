/* 
 * File:   main.h
 * Author: Asus
 *
 * Created on November 12, 2024, 8:59 PM
 */

#ifndef MAIN_H
#define	MAIN_H

#ifdef	__cplusplus
extern "C" {
#endif

#define LCD_RS RD1       //RS noi vao RD1
#define LCD_EN RD0       //EN noi vao RD0
#define LCD_RW RD2       //EN noi vao RD2
#define LCD_D4 RD4       //D4 noi vao RD4
#define LCD_D5 RD5       //D5 noi vao RD5
#define LCD_D6 RD6       //D6 noi vao RD6
#define LCD_D7 RD7       //D7 noi vao RD7
#define LCD_TRIS TRISD 


#ifdef	__cplusplus
}
#endif

#endif	/* MAIN_H */

