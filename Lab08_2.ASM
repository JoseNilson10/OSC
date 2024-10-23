Title Atividade
.model small
.data
    MSG1 DB "DIGITE UM NUMERO: $"

.CODE
Main PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV BX,1D

    MOV CX,16

    MOV AH,02
    REPETE:
    RCL BX,1
    JC EXIBIR1
    MOV DL,'0'
    INT 21h
    JMP PULA
    EXIBIR1:
    MOV DL,'1'
    INT 21h
    PULA:
    LOOP REPETE

    FIM: 
        MOV AH,4ch
        INT 21h

Main ENDP
END MAIN