.model small
.stack 100h
.data
  star db '*$'
  space db ' $' 
  newline db 10, 13, '$' 
.code
  main proc
    mov ax, @data 
    mov ds, ax
    mov cx, 5 
    mov bx, 0 
  outer_loop:
    push cx 
    mov cx, bx 
  inner_loop:
    cmp cx, 0 
    je print_star 
    lea dx, space 
    mov ah, 9 
    int 21h 
    dec cx 
    jmp inner_loop 
  print_star:
    lea dx, star 
    mov ah, 9 
    int 21h 
    lea dx, newline 
    mov ah, 9 
    int 21h
    pop cx 
    inc bx 
    loop outer_loop 
    mov ah, 4ch 
    int 21h 
  main endp
end main
