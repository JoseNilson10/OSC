TITLE PROGRAMA EXEMPLO siOUdi
    .MODEL SMALL
    .DATA
       MATRIZ db   1,2,3,4
                 db 4,3,2,1
                 db 5,6,7,8
                 db 8,7,6,5 
        MSG1 DB 13,10, "$"
    .CODE
    MAIN PROC
    Mov AX,@DATA
    MOV DS,AX

    CALL IMPRIMIR
    MOV AH,4ch
    INT 21h
     ENDP

    IMPRIMIR PROC
        XOR BX,BX ;Zerar o registrador que vai ser usado para as linhas da matriz
        XOR SI,SI ;zerar o registrador que vai ser usado para as colunas da matriz
            COLUNA:
            MOV AL,MATRIZ[BX][SI] ;vai colocar o valor das posições da matriz em Al
             ADD AL,'0' ;transforma em numero
             MOV DL,AL
             MOV AH,02 ;imprime o numero
            INT 21h
            INC SI ;incrementa SI para ir pra proxima coluna
            CMP SI,4 ;se coluna for igual a 4, chegou ao fim. pula pra linha
            JE LINHA
            JMP COLUNA

            LINHA:
            MOV AH,09
            LEA DX,MSG1 ;imprime uma mensagem que pula a linha
            INT 21h
            XOR SI,SI ;deixa a coluna na posição inicial de novo
            ADD BX,4 ;soma 4 em bx para ir pra proxima linha
            CMP BX,16 ;se for igual a 16, acabou a matriz
            JE FIM
            JMP COLUNA
            FIM:
            RET
         ENDP

        END MAIN
    