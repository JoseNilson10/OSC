Title Atividade
.model small
.data
  MSG1 DB 13,10, "*$"
  MSG2 DB 13,10, "Digite a quantidade de vezes que deseja repetir: $ "
.CODE
Main PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,09
    LEA DX, MSG2
    INT 21h

    MOV AH,01 
    INT 21h ;COLOCAR O VALOR QUE O USUARIO DIGITAR EM CL
    AND AL,0FH
    MOV CL,AL
    ;vai deixar o caractere que o usuario digitar em CL

    MOV AH,09 
    LEA DX, MSG1
    ;Função de imprimir 
    REPETICAO:
    CMP CL,0;Verifica a condição no inicio do LOOP
    JZ SAI_WHILE ;se for igual vai sair do while
    DEC CL ;vai decrementar o cl se continuar no while
    INT 21H ;LER O ASTERISCO
    JMP REPETICAO
    SAI_WHILE:

MOV AH,4ch ;fim do programa
int 21h
MAIN ENDP
END MAIN

