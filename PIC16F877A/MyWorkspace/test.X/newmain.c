#include <xc.h>
#define _XTAL_FREQ 20000000
unsigned char LED[10]={0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92,0x82,0xF8,0x80,0x90};
void quetled(int a){
    int x,y;
    x=a/10;
    y=a%10;
    for(int z=0;z<100;z++){ //th?i gian ?? xuât hi?n là (1+1)x100 là 200ms
    RC5=0;PORTB=LED[x];__delay_ms(2);RC5=1;

    RC6=0;PORTB=LED[y];__delay_ms(2);RC6=1;
    
    
    
}
}
void main(void) {
    TRISB=0;
    TRISC=0;
    while(1){
    for(int i=0;i<100;i++){
        quetled(i);
    }

}
}