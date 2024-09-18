Title Atividade
.MODEL SMALL
.STACK 100H
.data
.code
Main PROC
    MOV DL,65 ;começar com a primeira letra
    MOV CX, 26;numeros de repetições que é equivalente a quantidade de letras do alfabeto
    MOV AH,02
    MAIUSCULA: 
        int 21h
        INC DL
        LOOP MAIUSCULA
        ;com este loop vai mostrar todas as letras do alfabeto. OBS:MAIUSCULA

    MOV CX, 26
    MOV DL, 61H ;valor de a minusculo
    MINUSCULA:
        int 21h
        inc DL
        LOOP MINUSCULA
        ;com este loop vai mostrar todas as letras do alfabeto. OBS:MINUSCULA

    FIM:
    MOV AH,4ch
    int 21h;FIM DO PROGRAMA
MAIN ENDP
END MAIN
