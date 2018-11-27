org 0000h

mov r1,#05h
again:mov a,r1
mov r2,a
mov r0,#30h
mov a,@r0
up: inc r0
clr c
subb a,b
jc skip
mov b,@r0
dec r0
mov a,@r0
mov @r0,b
inc r0
mov @r0,a
skip:djnz r2,up
djnz r1,again
end
