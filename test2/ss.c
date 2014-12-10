#include<htc.h>
void main()
{

int i;
TRISC=0;
while(1)
{
PORTC=0X00;
for(i=0;i<2000;i++)
{
}
PORTC=0XFF;
for(i=0;i<2000;i++)
{
}
}
}