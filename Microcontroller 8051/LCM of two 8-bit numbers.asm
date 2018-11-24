org 0000h
      ljmp main
      org 40h
main: mov R1,#06h       ; The first number to find gcd
      mov R2,#04h       ; The second number to find gcd
      mov a,R1
      mov b,R2
      cjne a,b,next    ; compares and jumps to assign proper registers
      ljmp stop        ; if two numbers are equal it assigns the same number to the result register
next: jnc loop         ; if num1>num2 it jumps to loop
      mov a,R2         ; if num1<num2 it assigns the registers in reverse way
      mov b,R1
loop: mov R3,b         ; temperorily storing the second register in r4
      div ab
      mov a,R3  
      mov R7,b         ; storing the remainder in r7
      cjne R7,#00h,loop; the loop repeats till the remainder is zero
stop: mov R4,a        ; Stores the result in r4
      mov a,R1
      mov b,R2
      mul ab
      mov b,R4
      div ab
      mov R7,a         
end
