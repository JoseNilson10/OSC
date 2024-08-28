Title Atividade1
.model small
.data
    MSG1 DB 13,10,'Digite uma Letra Minuscula: $'
    MSG2 DB 10,13,'A letra maiuscula corresponde eh: $'
    ;mensagens
.code
main PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,9
    LEA DX,MSG1
    INT 21h
    ;EXIBIR STRING NA TELA
    MOV AH,1
    INT 21h
    MOV BL,AL
    ;LER CARACTERE
    MOV AH,9
    LEA DX,MSG2
    INT 21h
    ;MOSTRAR A SEGUNDA STRING
    SUB BL,20h
    ;SUBTRAÇÃO
    MOV AH,2
    MOV DL,BL
    INT 21h
    ;IMPRIME O CARACTERE
    MOV AH,4ch
    INT 21h
    ;FINALIZAÇÃO
MAIN endp
END Main