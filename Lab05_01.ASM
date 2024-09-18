TITLE Atividade
.MODEL SMALL
.DATA
    MSG1 DB "*$"           
    MSG2 DB 10,13,"*$"     
.STACK 100h
.CODE
    MAIN PROC

        ;Permissão ao programa acessar o data
        MOV AX,@DATA
        MOV DS,AX
        ;Especificando que o ciclo deve rodar 50 vezes, a cada jump é descontado 1 de CH até chegar no 0
        MOV CH,50D

    LINHA1: 

        ;MOSTRAR PRIMEIRA STRING
        MOV AH,9
        MOV DX,OFFSET MSG1
        INT 21h
        ;Descontando 1 de CH
        DEC CH
        ;Comparando se CH é diferente se zero
        JNZ LINHA1
        ;Reinicia o ciclo de 50 vezes para o próximo jump.
        MOV CH,50D
        ;Pula para a próxima etapa
        JMP LINHA

    LINHA:

        ;Exibe os asteriscos em linhas diferentes.
        MOV AH,9
        MOV DX,OFFSET MSG2
        INT 21h
        ;Retira o valor 1 do contador.
        DEC CH
        ;compara pra ver se passa pro fim ou repete o programa
        JNZ LINHA
    FIM: 

        ;Finaliza o programa
        MOV AH,4Ch
        INT 21h
    
    MAIN ENDP
END MAIN