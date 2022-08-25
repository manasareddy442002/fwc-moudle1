#include<Arduino.h>
int a=0, b=0;
int x1,x2,x3,x4,K;
void setup() 
{
  pinMode(13,OUTPUT);

}

void loop() {
  digitalRead(a);
  digitalRead(b);
  x1=!(a&&b);
  x2=!(x1&&a);
  x3=!(x1&&b);
  x4=!(x2&&x3);
  K=!(x4);
  digitalWrite(13,K);
  delay(1000);

}
