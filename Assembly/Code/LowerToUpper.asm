.model small 
.stack 64
.data
    string db "MY NAME IS AHmet $"
    string2 db 16 dup(?), "$"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov si, offset string
    mov di, offset string2
    mov cx, 16
   
           
    compare:
     mov al, [si]
     cmp al, 'a'
     jb next
     cmp al, 'z'
     ja next
     and al, 11011111b
     
     
     next:
        mov [di], al
        inc si
        inc di
        loop back   
           
        mov ah, 09
        mov dx, offset string2
        int 21h
    
        mov ah, 4ch
        int 21h
main endp
end main
