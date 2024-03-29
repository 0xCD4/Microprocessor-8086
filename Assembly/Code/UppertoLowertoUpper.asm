ORG 100H  

.DATA
    STR DB "BiLaL BabaYIgiT"
    STR2 DB 15 DUP(?), '$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS, AX

    MOV SI , OFFSET STR
    MOV DI, OFFSET STR2

    MOV CX, 15

COMPARE:
    MOV AL, [SI] ; AL = 'B'
    CMP AL, 'A'
    JB CHECK_LOWERCASE
    CMP AL, 'Z'
    JA CHECK_LOWERCASE
    XOR AL, 20H
    JMP CONTINUE

CHECK_LOWERCASE:
    CMP AL, 'a'
    JB CONTINUE
    CMP AL, 'z'
    JA CONTINUE
    XOR AL, 20H

CONTINUE:
    MOV [DI], AL
    INC SI
    INC DI
    LOOP COMPARE

PRINT_STR2:
    MOV DX, OFFSET STR2 
    MOV AH, 09H 
    INT 21H 
EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
