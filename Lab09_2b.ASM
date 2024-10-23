TITLE EXEMPLO 
.MODEL SMALL
.DATA
    VETOR DB 1,1,1,2,2,2
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX

        XOR DL,DL ;usado para transformar
        MOV CX,6
        XOR DI,DI ;zera DI
        
        CALL LERVETOR
        MOV AH,4ch
        INT 21h
        ENDP

        LERVETOR PROC
            VOLTA:
                MOV DL,VETOR[DI] ;como zerou DI com xor, DI vai pra posição inicial que é O
                INC DI
                ADD DL,30H ;transformar em numero
                MOV AH,02
                INT 21h
            LOOP VOLTA
            RET
            ENDP
            END MAIN