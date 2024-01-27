org 100h


mov cx, 6


L1:
    push cx ; 6 stack at
    
L2:
    mov ah, 0eh
    mov al, "*"
    int 10h 
    
    loop L2
    
    mov ah, 0eh
    mov al, 0ah
    int 10h
    
    
space:
    mov ah, 0eh
    mov al, " "
    int 10h
    
    pop cx 
    
    
    loop L1
    
