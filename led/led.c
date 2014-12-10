#include<htc.h>
#include<pic.h>
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
 		& LVP_OFF & CPD_OFF & DEBUG_OFF);
void delay(int j);

void main()
{
TRISD=0X00;
while(1)
{
RD7=0;
RD5=1;
delay(250);
RD7=0;
RD5=0;
delay(500);
RD7=1;
RD5=0;
delay(250);
RD7=0;
RD5=0;
delay(500);
}
}
void delay(int j)
{
int i,k;
for(i=0;i<=j;i++)
{
for(k=0;k<=255;k++);
}
}