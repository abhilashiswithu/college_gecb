ORG 0000h
LJMP MAIN
ORG 40h
MAIN:  MOV R0,#40H    ;Memory space where all the fibonacci numbers are stored
       MOV R3,#8      ; Move number of fibonacci numbers to be generated
       MOV R1,#00H
       MOV @R0,#0H    ;Move the first number in the memory space
       INC R0
       MOV @R0,#01H   ;Move the second number in the memory space
       MOV R2,#01H
LABEL2:INC R0
       MOV A,R1
       ADD A,R2       ; add the previous two numbers
       MOV @R0,A      ;store the fibonacci number in the memory space
       MOV B,R2       ;exchange n store the preceding two numbers in r1 
       MOV R1,B
       MOV R2,A
       DJNZ R3,LABEL2 ;keep the track of counter
       END
