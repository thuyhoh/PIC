# 1 "lcd.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "lcd.c" 2
# 1 "./lcd.h" 1
# 15 "./lcd.h"
void LCD_Enable(void);
void LCD_Send4Bit( unsigned char data);
void LCD_SendCommand (unsigned char command );
void LCD_Init (void);
void LCD_PutChar (unsigned char data);
void LCD_PutString (char *s);
void LCD_Clear(void) ;
void LCD_Gotoxy(unsigned char row, unsigned char col);
# 1 "lcd.c" 2

void LCD_Enable(void)
{
    LCD_EN = 1;
    __delay_us(3);
    LCD_EN = 0;
    __delay_us(50);
}
void LCD_Send4Bit( unsigned char data)
{

    LCD_D4= data & 0x01;
    LCD_D5=(data>>1)& 0x01;
    LCD_D6=(data>>2)& 0x01;
    LCD_D7=(data>>3)& 0x01;
}

void LCD_SendCommand (unsigned char command )
{
    LCD_Send4Bit(command >>4);
    LCD_Enable();
    LCD_Send4Bit(command );
    LCD_Enable();
}

void LCD_Init (void)
{
    LCD_RS = 0;
    LCD_RW=0;
    __delay_ms(20);
    LCD_Send4Bit(0x03);
    LCD_Enable();
    LCD_Send4Bit(0x03);
    LCD_Enable();
    LCD_Send4Bit(0x03);
    LCD_Enable();
    __delay_ms(10);
    LCD_Send4Bit(0x02);
    LCD_Enable();
    __delay_ms(10);
    LCD_SendCommand( 0x28 );
    LCD_SendCommand( 0x0C);
    LCD_SendCommand( 0x06 );
    LCD_SendCommand( 0x01 );
}


void LCD_PutChar (unsigned char data)
{
    LCD_RS=1;
    LCD_SendCommand (data);
    LCD_RS=0;
}

void LCD_PutString (char *s)
{

   while (*s)
   {
      LCD_PutChar(*s);
      s++;
   }
}

void LCD_Clear()
{
  LCD_SendCommand(0x01);
  __delay_ms(5);
}

void LCD_Gotoxy(unsigned char row, unsigned char col)
{
  unsigned char address;
  if(row==0)
      address=0x80 + col;
  else address=0x80 + col+64;

  LCD_SendCommand(address);
  __delay_us(50);
}
