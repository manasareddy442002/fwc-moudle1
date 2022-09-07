#include <avr/io.h>
#include<stdbool.h>
#include <util/delay.h>
void sevenseg(int);
int main (void)
{
  bool x=0,y=1;
  bool p,q,r,s,t;
  while(1)
  {
     DDRD   =0b00100000;
     p=!(x&&y);
     q=!(x&&p);
     r=!(y&&p);
     s=!(q&&r);
     t=!(s);
     PORTD|=(t<<4);
  }
  return 0;
}
