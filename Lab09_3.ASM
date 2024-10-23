Title Atividade
.MODEL SMALL
.DATA
    VETOR DB 1,2,3,4,5,6,7
.CODE 
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX

        LEA BX,VETOR ;Deixa o bx com a primeira posição do vetor
        MOV SI,6 ;coloca o SI na ultima posição do Vetor

                MOV CX,3
        CALL LERVETOR ;vai pra função LERVETOR
        CALL IMPRIME ;Depois de retorar, vai para a função imprime
            MOV AH,4ch ;fim do programa
            INT 21h
            ENDP

            LERVETOR PROC
                REPETE:
                    MOV AL,VETOR[BX] ;AL recebe o valor que esta bx
                    XCHG AL,VETOR[SI] ;troca o valor de al com o si(ultima posição)
                    MOV VETOR[BX],AL ;agora, AL está com o valor que estava na ultima posição, passando o valor De AL para a posição BX 
                    ADD DL,30H
                    INC BX ;incrementa bx
                    DEC SI ;decrementa si
                    
                LOOP REPETE
                RET
                ENDP

            IMPRIME PROC
                MOV CX,7 ;tem que imprimir um vetor de 7 posições
                LEA BX,VETOR ;bx vai para a posição inicial
                    MOV AH,02
                IMPRIMIR:
                    MOV DL,[BX]
                    ADD DL,30H
                    INT 21h ;imprime o valor na posição de BX e incrementa
                    INC BX
                    LOOP IMPRIMIR
                    RET
                    ENDP
            END MAIN