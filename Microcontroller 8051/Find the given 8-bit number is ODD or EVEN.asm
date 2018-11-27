org 0000H
MOV A,#09H        ;Given number
CLR C
MOV B,#02H
DIV AB
MOV R0,B
CJNE R0,#00,ODD
JMP EVEN
ODD:MOV R4,#01H   ;IS ODD
JMP E
EVEN:MOV R4,#02H  ;IS EVEN
E:
END               ; If R4=1 is ODD / R4=2 is EVEN
