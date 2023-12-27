ORG 100h

.DATA
    string   DB "hEllO $"
    string2  DB 5 DUP(?), "$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV SI, OFFSET string
    MOV DI, OFFSET string2

    MOV CX, 5

COMPARE_LOOP:
    MOV AL, [SI]
    CMP AL, 'A'
    JL NOT_UPPERCASE
    CMP AL, 'Z'
    JG NOT_UPPERCASE

   
    ADD AL, 32
    JMP COPY_CHAR

NOT_UPPERCASE:
    CMP AL, 'a'
    JL COPY_CHAR
    CMP AL, 'z'
    JG COPY_CHAR

   
    SUB AL, 32

COPY_CHAR:
    MOV [DI], AL
    INC SI
    INC DI
    LOOP COMPARE_LOOP

   
    MOV AH, 09
    MOV DX, OFFSET string2
    INT 21h

   
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
