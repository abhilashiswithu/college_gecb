
DATA SEGMENT
        Var1 DB 02H
        Var2 DB 03H
DATA ENDS
ASSUME CS:CODE,DS:DATA
CODE SEGMENT
START:MOV AX,DATA
      MOV DS,AX
      MOV AL,Var1
      MOV BL,Var2
      ADD AL,BL
      MOV AH,4CH
      INT 21H
CODE ENDS
END START
