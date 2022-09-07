.include "/home/user/m328Pdef.inc"
ldi R26,0b00100000
out DDRB,R26

ldi R16,0b00000001     ;b
ldi R17,0b00000001     ;a

and R16,R17          ;ab
mov R18,R16          ;r18=ab

ldi  R19,0b00000001
eor R18,R19         ;r18=(a.b)'=x1

mov R20,R18         ;r20=x1
and R20,R17         ;r20=x1.a
ldi R21,0b00000001
eor R20,R21         ;r20=(x1.a)'=x2
mov R22,R18         ;r22=x1
and R22,R16         ;r22=x1.b
ldi R23,0b00000001 
eor R22,R23         ;r22=(x1.b)'=x3
mov R24,R20         ;r24=x2
and R24,R22         ;r24=x2.x3
ldi R25,0b00000001
eor R24,R25         ;r24=(x2.x3)'=x4
mov R26,R24         ;r26=x4
ldi R27,0b00000001
eor R26,R27
out PORTB, R26
start:
rjmp start
