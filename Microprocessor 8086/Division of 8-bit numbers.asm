
DATA SEGMENT
    VAR1 DB 02H
    VAR2 DB 02H
DATA ENDS
ASSUME CS:CODE,DS:DATA
CODE SEGMENT
   START:MOV AX,DATA
         MOV DS,AX
         MOV AL,VAR1
         MOV BL,VAR2
	 CLC
         DIV BL
         MOV AH,4CH
         INT 21H
CODE ENDS
END START