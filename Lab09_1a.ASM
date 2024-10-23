Title Programa Vetores
.MODEL SMALL
.DATA
    VETOR DB 1,1,1,2,2,2
.CODE

    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX

        XOR DL,DL ;Zerar DL para transformar
        MOV CX,6 ;como o vetor tem 6 posições, faz um LOOP com contagem em 6, decrementando até 0
        LEA BX,VETOR ;como LEA deixa o bx no offseat, não é necessário zerar o bx
            CALL LERVETOR
        MOV AH,4ch
        INT 21h
    MAIN ENDP
        LERVETOR PROC
            VOLTA:
                MOV DL,[BX] ;DL vai receber o conteudo da posição que está em BX
                INC BX  ;incrementa bx para a proxima posição do vetor
                MOV AH,02
                ADD DL,30H ;transforma em caractere
                INT 21H
            LOOP VOLTA
            RET
            ENDP
            END MAIN