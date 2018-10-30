assume cs:code,ds:data
data segment
var1 db 0005h
data ends
code segment
start:
mov ax,data
mov ds,ax
mov al,01h
mov bl,var1

call fact

fact proc
again:mul bl
dec bl
jnz again
ret
endp


mov ah,4ch
int 21h
code ends
end start

