; 0 1 1 2 3 5 8 13 21 = 


.MODEL SMALL
.STACK 100H


.DATA
    SUM DW ?
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        
        MOV AX, 0
        MOV BX, 1   
        MOV CX, 9
        
        F:
            ADD AX, BX ; AX = AX + BX
            XCHG AX, BX
            
            
          LOOP F  
        
        SUB BX, 1 ; BX = BX - 1  
        MOV [SUM], BX
        
        
        MOV AH, 4CH
        INT 21H
        
        MAIN ENDP
    END MAIN
        
