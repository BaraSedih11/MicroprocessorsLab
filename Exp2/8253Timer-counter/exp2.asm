start:
mov al,16h 
mov dx, 43h 
out dx, al
s:
mov dx, 40h 
mov al, 100 
out dx, al 
jmp s
