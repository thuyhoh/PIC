#include <pic16f877a.h>
#include <xc.h>

// Define the frequency of the external crystal oscillator
#define _XTAL_FREQ 4000000  // 20MHz external crystal oscillator frequency
#define PRESCALE_VAL 16
// Configuration bits
#pragma config FOSC = HS    // High-Speed Crystal oscillator
#pragma config WDTE = OFF   // Watchdog Timer disabled
#pragma config PWRTE = OFF  // Power-up Timer disabled
#pragma config BOREN = OFF  // Brown-out Reset disabled
#pragma config LVP = OFF    // Low-Voltage Programming disabled
#pragma config CPD = OFF    // Data memory code protection off
#pragma config WRT = OFF    // Flash Program Memory Write protection off
#pragma config CP = OFF     // Flash Program Memory Code protection off

void ADC_Init(void)
{
    // select F conversion fosc/8
    ADCON1bits_t.ADCS2 = 0;
    ADCON0bits_t.ADCS = 0b01; 
    
    // select channel 0
    ADCON0bits_t.CHS = 0;  
    ADCON1bits_t.PCFG = 0x0; // A/D Port Configuration Control
    ADCON0bits_t.ADON = 1;
    
    // select fomat of ADC value in ADRESL vs ADRESH
    ADCON1bits_t.ADFM = 0; // Left justified. Six (6) Least Significant bits of ADRESL are read as ?0?.
    
    ADCON0bits_t.ADON = 1;
    __delay_ms(2);
    ADCON0bits_t.GO_nDONE = 1;
}

uint32_t ADC_GetValue(void)
{
    uint32_t ADC_value = 0;
    if(ADCON1bits_t.ADFM == 1)
    {
        ADC_value = (ADRESH<<2) | (ADRESL&0x3);
    }else
    {
        ADC_value = ((0x3&ADRESH)<<8) | (ADRESL); // Left justified. Six (6) Least Significant bits of ADRESL are read as ?0?.
    }
    return ADC_value;
}

void ADC_IT_Init(void)
{
    GIE = 1;
    PEIE = 1;
    ADIE = 1;
    ADC_Init();
}

void __interrupt() ADCIRQ(void)
{
    if(ADIF == 1)
    {
        ADIF = 0;
        // interrupt code
    }
}

void main(void) {
    while(1)
    {
        
    }
    return;
}
