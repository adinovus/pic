#include <pic.h>

void main()
{
TRISB=0;
TRISC=0xff;

while(1)
{
if(RC0==1)
PORTB=0xff;
else
PORTB=0;
}


}