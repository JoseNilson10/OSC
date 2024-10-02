Title Numero
.model small
.stack 100h
.data
    MSG1 DB "MULTIPLICANDO: $"
    MSG2  DB 10,13,"MULTIPLICADOR: $"
    MSG3 DB 10,13,"PRODUTO eh: $"
.code
main proc
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,09
    LEA DX,MSG1 ;imprimir mensagem
    INT 21h

    MOV AH,01
    INT 21h
    MOV BL,AL
    AND BL,0FH ;transformar o caractere em numero

    MOV AH,09
    LEA DX,MSG2 ;imprimir mensagem 2
    INT 21h

    MOV AH,01
    INT 21h
    MOV CL,AL
    AND CL,0FH ;transformar o segundo caractere

    REPETE:
        CMP CL,0
        JE FIM ;se cl for igual a 0, pula pro fim
        DEC CL
        ADD BH,BL ;somar o bl em BH
        JMP REPETE ;looping

    FIM: 
        MOV AH,09
        LEA DX,MSG3 ;imprimir mensagem 3
        INT 21h

        MOV AH,02
        MOV DL,BH
        OR DL,30h;transformar o numero para caractere
        INT 21h

        MOV AH,4ch
        INT 21h

        ENDP
        END MAIN