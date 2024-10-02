Title Atividade1
.model small
.data
    MSG0 DB 13,10,'DIGITE O NUMERO QUE DESEJA: $'
    MSG1 DB 13,10,'o numero EH par $'
    MSG2 DB 10,13,'o numero EH impar $'
    ;mensagens
.code
main PROC
    MOV AX,@DATA
    MOV DS, AX

    MOV AH,09
    LEA DX,MSG0
    INT 21h

    MOV AH,01
    INT 21h
    AND AL,0FH
    MOV BL,AL

    TEST BL,01h
    JZ PAR
    
    MOV AH,09
    LEA DX,MSG2
    INT 21H
    JMP FIM

    PAR: MOV AH,09
        LEA DX,MSG1
        INT 21h

    FIM: MOV AH,4ch
            int 21H
    
    ENDP
    END MAIN