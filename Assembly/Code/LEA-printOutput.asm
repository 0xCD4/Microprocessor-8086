.MODEL SMALL
.STACK 100H


.DATA
    GREETINGS1 DB "HELLO,", "$"
    GREETINGS2 DB "ASSEMBLY!", "$"
    RESULT DB 255DUP("$")
    
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        
        LEA SI, GREETINGS1
        LEA DI, RESULT
        
        
       
        
        COPYLOOP1:
            MOV AL, [SI] 
            MOV [DI], AL
            INC SI
            INC DI
            CMP AL, "$"
            JNE COPYLOOP1
        
        DEC DI
        
       
       
        LEA SI, GREETINGS2 
        
        COPYLOOP2:
            MOV AL, [SI]
            MOV [DI], AL
            INC SI
            INC DI
            CMP AL, "$"
            JNE COPYLOOP2
            
            
        ; PRINT THE RESULT
        
        LEA DX, RESULT
        MOV AH, 09H
        INT 21H
        MOV AX, 4C00H
        INT 21H
        
        
     MAIN ENDP
 END MAIN
         
