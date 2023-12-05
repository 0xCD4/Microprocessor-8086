.model small
.stack 100h
.data

    string db "hello"
    
    
.code 

    main proc
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset string ; start offset address of string
        mov cx, 5 ; counting 5 times
        
        
        stackpush:
            
            mov bx, [si] ; letter 'h' is being stored to bx
            push bx ; push into the stack
            inc si ; increment source index (si)
            loop stackpush
            
        mov cx, 5
        
        stackpop:
            pop dx
            mov ah, 02h
            int 21h
            loop stackpop
            
    main endp 
    
end main 
