#include "lcd.h"
void LCD_Enable(void)
{
    LCD_EN = 1;                                         
    __delay_us(3); 
    LCD_EN = 0;
    __delay_us(50); 
}
void LCD_Send4Bit( unsigned char data)
{
    // gui tung bit     
    LCD_D4= data    & 0x01; //D4 bang bit dau ( tu phai qua trai)
    LCD_D5=(data>>1)& 0x01; //D5 bang bit thu 2 
    LCD_D6=(data>>2)& 0x01; //D6 bang bit thu 3 
    LCD_D7=(data>>3)& 0x01; //D7 bang bit thu 4 
}

void LCD_SendCommand (unsigned char command )
{
    LCD_Send4Bit(command >>4);//Gui 4 bit cao ( dich phai 4 bit)
    LCD_Enable();
    LCD_Send4Bit(command );  //Gui 4 bit thap
    LCD_Enable();
}

void LCD_Init (void)
{                             
    LCD_RS = 0;
    LCD_RW=0;
    __delay_ms(20);
    LCD_Send4Bit(0x03); //gui 4 bit 0011
    LCD_Enable();
    LCD_Send4Bit(0x03); //gui 4 bit 0011
    LCD_Enable();
    LCD_Send4Bit(0x03); //gui 4 bit 0011
    LCD_Enable();
    __delay_ms(10);
    LCD_Send4Bit(0x02); //gui 4 bit 0010
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
    LCD_SendCommand (data);//gui 1 ki tu len LCD
    LCD_RS=0;
}

void LCD_PutString (char *s)
{
//thuc hien gui tung ki tu len LCD
   while (*s)   
   {
      LCD_PutChar(*s);
      s++;
   }
}

void LCD_Clear() 
{
  LCD_SendCommand(0x01); //DB7 DB6 DB5 DB4 DB3 DB2 DB1 DB0= 0 0 0 0 0 0 0 1 
  __delay_ms(5);
}

void LCD_Gotoxy(unsigned char row, unsigned char col)
{
  unsigned char address;    
  if(row==0) 
      address=0x80 + col;     //can D7=1
  else address=0x80 + col+64; //0x80=1000 0000  
  
  LCD_SendCommand(address);
  __delay_us(50);
}

