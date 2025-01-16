subtitle "Microchip MPLAB XC8 C Compiler v2.50 (Free license) build 20240725155939 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_Timer2_1ms_IT_init
	FNROOT	_main
	FNCALL	intlevel1,_tim2
	global	intlevel1
	FNROOT	intlevel1
	global	_TMR2
_TMR2	set	0x11
	global	_TMR2IF
_TMR2IF	set	0x61
	global	_TMR2ON
_TMR2ON	set	0x92
	global	_PEIE
_PEIE	set	0x5E
	global	_GIE
_GIE	set	0x5F
	global	_TOUTPS3
_TOUTPS3	set	0x96
	global	_TOUTPS2
_TOUTPS2	set	0x95
	global	_TOUTPS1
_TOUTPS1	set	0x94
	global	_TOUTPS0
_TOUTPS0	set	0x93
	global	_T2CKPS1
_T2CKPS1	set	0x91
	global	_T2CKPS0
_T2CKPS0	set	0x90
	global	_RB0
_RB0	set	0x30
	global	_PR2
_PR2	set	0x92
	global	_TMR2IE
_TMR2IE	set	0x461
	global	_TRISB0
_TRISB0	set	0x430
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config BOREN = "OFF"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"dist/default/production\0062_Timer2_IT_src.X.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Timer2_1ms_IT_init:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_tim2:	; 1 bytes @ 0x0
??_tim2:	; 1 bytes @ 0x0
	ds	2
??_Timer2_1ms_IT_init:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      2       2
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _tim2 in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _tim2 in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _tim2 in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _tim2 in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _tim2 in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;!                 _Timer2_1ms_IT_init
;! ---------------------------------------------------------------------------------
;! (1) _Timer2_1ms_IT_init                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _tim2                                                 2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Timer2_1ms_IT_init
;!
;! _tim2 (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14      2       2     14.3%
;!BANK0               80      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       2      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 26 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Timer2_1ms_IT_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	26
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	26
	
_main:	
;incstack = 0
	callstack 6
; Regs used in _main: [status,2+status,0+pclath+cstack]
	line	28
	
l599:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7	;volatile
	line	29
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	30
	
l601:	
	fcall	_Timer2_1ms_IT_init
	line	32
	
l37:	
	line	35
	
l38:	
	goto	l37
	global	start
	ljmp	start
	callstack 0
	line	37
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Timer2_1ms_IT_init

;; *************** function _Timer2_1ms_IT_init *****************
;; Defined at:
;;		line 39 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext1
__ptext1:	;psect for function _Timer2_1ms_IT_init
psect	text1
	file	"main.c"
	line	39
	
_Timer2_1ms_IT_init:	
;incstack = 0
	callstack 6
; Regs used in _Timer2_1ms_IT_init: [status,2]
	line	42
	
l593:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(144/8),(144)&7	;volatile
	line	43
	bsf	(145/8),(145)&7	;volatile
	line	45
	bsf	(147/8),(147)&7	;volatile
	line	46
	bsf	(148/8),(148)&7	;volatile
	line	47
	bsf	(149/8),(149)&7	;volatile
	line	48
	bsf	(150/8),(150)&7	;volatile
	line	49
	bsf	(95/8),(95)&7	;volatile
	line	50
	bsf	(94/8),(94)&7	;volatile
	line	51
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	57
	
l595:	
	clrf	(17)	;volatile
	line	58
	
l597:	
	movlw	013h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	59
	
l43:	
	return
	callstack 0
GLOBAL	__end_of_Timer2_1ms_IT_init
	__end_of_Timer2_1ms_IT_init:
	signat	_Timer2_1ms_IT_init,89
	global	_tim2

;; *************** function _tim2 *****************
;; Defined at:
;;		line 63 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	63
global __ptext2
__ptext2:	;psect for function _tim2
psect	text2
	file	"main.c"
	line	63
	
_tim2:	
;incstack = 0
	callstack 6
; Regs used in _tim2: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_tim2+0)
	movf	pclath,w
	movwf	(??_tim2+1)
	ljmp	_tim2
psect	text2
	line	65
	
i1l603:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l49
u1_20:
	line	67
	
i1l605:	
	bcf	(97/8),(97)&7	;volatile
	line	68
	
i1l607:	
	movlw	1<<((48)&7)
	xorwf	((48)/8),f
	line	70
	
i1l49:	
	movf	(??_tim2+1),w
	movwf	pclath
	swapf	(??_tim2+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_tim2
	__end_of_tim2:
	signat	_tim2,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
