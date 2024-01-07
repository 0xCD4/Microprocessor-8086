.model small
.stack 100h
.data
  star db '*$' ; character to print
  space db ' $' ; space character
  newline db 10, 13, '$' ; newline character
.code
  main proc
    mov ax, @data ; set data segment
    mov ds, ax
    mov cx, 5 ; outer loop counter
    mov bx, 0 ; space counter
  outer_loop:
    push cx ; save outer loop counter
    mov cx, bx ; set inner loop counter
  inner_loop:
    cmp cx, 0 ; check if inner loop is done
    je print_star ; if yes, print star
    lea dx, space ; if no, load space address
    mov ah, 9 ; print string function
    int 21h ; call DOS interrupt
    dec cx ; decrement inner loop counter
    jmp inner_loop ; repeat inner loop
  print_star:
    lea dx, star ; load star address
    mov ah, 9 ; print string function
    int 21h ; call DOS interrupt
    lea dx, newline ; load newline address
    mov ah, 9 ; print string function
    int 21h ; call DOS interrupt
    pop cx ; restore outer loop counter
    inc bx ; increment space counter
    loop outer_loop ; repeat outer loop
    mov ah, 4ch ; exit program function
    int 21h ; call DOS interrupt
  main endp
end main
