CODE SEGMENT
ASSUME CS:CODE
ORG 100H

START:

  mov dx, Off2bh
  mov al,82h
  out dx, al
  
  read:
    mov dx,0ff29h
    in al,dx
    mov dx, Off28h
    out dx, al
    jmp read
END START
CODE ENDS
