#include<htc.h>
 
#define LCD_PORT PORTB
#define LCD_PORT_DIRECTION TRISD
#define LCD_CON_DIRECTION TRISB
#define RS RD6
#define RW RD5
#define E  RD7
 
 
 
 
char hello[11]="HELLO WORLD";
 
 
 
 
void delay(int itime)
{
int i,j;
for(i=0;i<itime;i++)
for(j=0;j<235;j++);
}
 
void IO_inti()
{
LCD_PORT_DIRECTION=0;
LCD_CON_DIRECTION =0;
 
}
 
 
/************** LCD COMMAND SEND *****************/
void lcd_cmd(char cmd1)
{
LCD_PORT=cmd1;
RS=0;
PORTC=0xff;
RD6=0;
RW=0;
E=1;
delay(20);
E=0;
 
}
/*************************************************/
 
 
/************** LCD DATA SEND ********************/
void lcd_data(char data1)
{
LCD_PORT=data1;
RS=1;
PORTC=0;
RW=0;
E=1;
delay(20);
E=0;
}  
/*************************************************/
 
 
/************** LCD INITIALIZATION ***************/
void lcd_inti()
{
lcd_cmd(0x38);
lcd_cmd(0x01); // clear screen
delay(10);
 
lcd_cmd(0x06); // 
delay(10);
lcd_cmd(0x80); // force cursor to 1st line
    delay(10);
 
}
/************************************************/
 