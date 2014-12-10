#include<pic.h>
#include<htc.h>
 int i=0;
void main()
{
TRISB=0X00;
while(1)
{
PORTB=0XFF;
{
for(i=0;i<3000;i++);
}
PORTB=0X00;
for(i=0;i<3000;i++);
}
}
