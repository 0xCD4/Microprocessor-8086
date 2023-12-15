include "emu8086.inc"
.model small
.stack 100h


.data
    array db 7,3,4,1,5 
    
    
.code
    main proc
        
        mov ax, @data
        mov ds, ax
        
        
        mov si, offset array
        mov cx, 5
        mov bl, [si]
        
        
        loopx:
            cmp [si], bl
            jle update
            
            resume:
            inc si
            
            loop loopx
            
            
            print "Smallest value from array: "
            add bl, 48
            mov dl, bl
            mov ah, 02h
            int 21h
            
            
            update:
            mov bl, [si]
            jmp resume  
         hlt
            
 int 21h
 main endp
