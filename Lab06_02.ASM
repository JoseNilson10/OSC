Title Atividade
.model small
.data
  MSG1 DB 13,10, "*$"
.CODE
Main PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,01 
    INT 21h ;COLOCAR O VALOR QUE O USUARIO DIGITAR EM CX
    AND AL,0FH
    MOV CL,AL

    MOV AH,09 
    LEA DX, MSG1;função de imprimir
    REPETICAO:
    INT 21H ;vai imprimir
    CMP CL,0 ;comparar
    DEC CL ;decrementar do CL se continuar no DO_While
    JE FIM ;se for igual vai pro fim
    JMP REPETICAO

    FIM: MOV AH,4ch
        INT 21h ;fim do programa

    MAIN ENDP
    END MAIN


    