include "emu8086.inc"
.model small
.stack 100h



; list = 1 2 3 4 5

.data
    list db 1, 2, 3, 4, 5  
    list2 db 6 dup(3) ; 3, 3 ,3 , 3 ,3,3 
    list3 db 'A', 'B', 'C', 'D', 'E', 'F'
    
.code

    main proc
        mov ax, @data
        mov ds, ax
        
        mov si, offset list3
        
        print "Values are: " 
        
        mov cx, 6 ; loop counter 6  
        
          
        
        
        loopx:
            mov dl, [si] ; encode decimal
            add dl, 48 ; decimal icin
            mov ah, 02h  
            int 21h
            
            
            mov dl, 32 ; space character 
            mov ah, 02h
            int 21h
            
            inc si 
            
            loop loopx
            
      mov ah, 04ch
      int 21h
      
     main endp
        
