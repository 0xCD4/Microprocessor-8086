.model small
.stack 64

.data
    data1 db "MY name IS Ahmet $"
    data2 db 16 dup(?), '$'
    
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        
        mov si, offset data1
        mov di, offset data2
        mov cx, 16
        
        back:
            mov al, [si]
            cmp al, 041h
            jb next
            cmp al, 05Ah
            ja next
            or al, 00100000b ;  6th bit makes it lowercase
            next:
                mov [di], al
                inc si
                inc di
                loop back
                mov ah, 09
                mov dx, offset data2
                int 21h
                
                mov ah, 4ch
                int 21h
                
main endp
end main
