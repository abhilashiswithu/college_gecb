ORG 0000H
MOV R0,#10H
MOV B,#01H
MOV R1,#00H
MOV A,R0
LOOP: SUBB A,B
JNC L1
JMP L2
L1:INC R1
	INC B
	INC B
	CJNE A,#00,LOOP
L2:MOV A,R1
MOV R7,,A
END
