TITLE PROGRAMA EXEMPLO siOUdi
    .MODEL SMALL
    .DATA
        VETOR DB 1,1,1,2,2,2
    .CODE

    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        XOR DL,DL
        MOV CX,6
        LEA SI,VETOR ;Como SI ja foi definido no offseat do vetor, ele ja fica na posição 0
        
        CALL LERVETOR
        MOV AH,4ch
        INT 21h
        ENDP

        LERVETOR PROC
            VOLTA:
                MOV DL,[SI] ;como ja tem o offseat, n foi preciso zerar SI
                INC SI
                ADD DL,30H
                MOV AH,02
                INT 21h

                LOOP VOLTA
                RET 
                ENDP
                END MAIN