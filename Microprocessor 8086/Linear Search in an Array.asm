DATA SEGMENT
    a db 01h,02h,03h,04h,05h
	msg1 db "FOUND$"
	msg2 db "NOT FOUND$"
DATA ENDS
CODE SEGMENT
ASSUME DS:DATA,CS:CODE
START: MOV AX,DATA
       MOV DS,AX
       
       MOV SI,00H
       MOV CX,05H
   L:  MOV AL,a[SI]
       CMP AL,03H
       JE RESULT
       
       INC SI
       DEC CX
       JNZ L
	MOV BL,00H
	LEA DX,msg2
       
   F:  
 	MOV AH,9
      	INT 21H
	MOV AH,4CH
       INT 21H       
RESULT:
       MOV BL,01H
	LEA DX,msg1
       JMP F
	
CODE ENDS
END START
