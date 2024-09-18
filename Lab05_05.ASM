TITLE Atividade
.MODEL SMALL
.STACK 100h
.DATA
    ;Define as strings para uma melhor interface do programa.
        MSG1 DB "A soma dos 5 numeros tem de resultar em um valor menor ou igual a 9.$"
        MSG2 DB 10,13,"Digite o $"
        MSG3 DB " numero da soma: $"
        MSG4 DB 10,13,"O resultado da soma eh: $"
.CODE
MAIN PROC

    ;Permite o acesso do programa ao .DATA
    MOV AX,@DATA
    MOV DS,AX

    ;Exibe a primeira string de aviso, explicando como funciona o programa.
    MOV AH,9
    MOV DX,OFFSET MSG1
    INT 21h

    ;Inicia o contador da interface para mostrar os numeros de 1 a 5.
    MOV BH,49d

    ;Define 5 ciclos para o loop.
    MOV CX,5d

    COLETAR:

        ;mostra primera string
        LEA DX,MSG2
        MOV AH,9
        INT 21h

        ;Exibição par ao usuario do numero do ciclo em que o loop está.
        MOV  AH,2
        MOV  DL,BH
        INT  21h

        ;mostra segunda string
        LEA DX,MSG3
        MOV AH,9
        INT 21h

        ;coletar o caractere digitado pelo usuario
        MOV AH,1
        INT 21h
        
        ;converter para um numero real
        SUB AL,48d

        ;Somando o valor de AL com o que ja está contido em BL
        ADD BL,AL

        ;Incrementando em 1 o contador do ciclo.
        INC BH

        ;repetir o ciclo
        LOOP COLETAR

    ;mostrar da mensagem de resultado.
    LEA DX,MSG4
    MOV AH,9
    INT 21h
    ;converter o caractere para numero
    ADD BL,48d

    ;Exibição do caractere contido em BL
    MOV  AH,2
    MOV  DL,BL
    INT  21h
        
    ;Finaliza o programa
    MOV AH,4Ch
    INT 21h
    
    MAIN ENDP

END MAIN

    
