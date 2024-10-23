TITLE QUESTÃO B
.MODEL SMALL
.DATA
    VETOR DB 1,1,1,2,2,2
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    XOR DL,DL
    MOV CX,6
    XOR BX,BX

        CALL LERVETOR
        MOV AH,4ch
        INT 21h
    ENDP

    LERVETOR PROC
         VOLTA:
                MOV DL,VETOR[BX] ;DL vai receber o conteudo da posição que está em BX
                INC BX  ;incrementa bx para a proxima posição do vetor
                ADD DL,30H ;transforma em caractere
                MOV AH,02
                INT 21H
            LOOP VOLTA
            RET
            ENDP
    END MAIN

