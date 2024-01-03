.MODEL SMALL
.STACK 100H


.DATA
    ARRAY1 DB 3,6,6,1
    SUM DB 0  
    AVERAGE DB ?
    
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV SI, OFFSET ARRAY1
        MOV CX, 4
        
        LOOP1:
        MOV DL, [SI]
        ADD SUM, DL
        INC SI
        
        LOOP LOOP1
        MOV AL, SUM
        MOV AH, 0
        
        MOV BL, 4
        DIV BL
        
        MOV AVERAGE, AL
        
        
       MOV AH, 4CH 
       INT 21H
       
       MAIN ENDP
    END MAIN
