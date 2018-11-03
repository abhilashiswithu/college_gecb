ASSUME CS:CODE, DS:DATA
DATA SEGMENT
        NUM1 DB 10H
        COUNT DW 00H
        ODD DB 01H
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,NUM1
        MOV CX,COUNT
        MOV BX,ODD
 AGAIN: SUB AX,BX
        ADD BX,02H
        INC CX
        CMP AX,00H
        JNZ AGAIN
        MOV DX,CX
        MOV AH,4CH
        INT 21H
 CODE ENDS
 END START
