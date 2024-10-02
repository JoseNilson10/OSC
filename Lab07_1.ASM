Title Numero
.model small
.stack 100h
.data
    MSG1 DB "Digite o dividendo: $"
    MSG2  DB 10,13,"Digite o divisor: $"
    MSG3 DB 10,13,"Quociente eh: $"
    MSG4 DB 10,13, "O resto eh: $"
.code
main proc
MOV AX,@DATA
MOV DS,AX

MOV AH,09
LEA DX,MSG1 ;imprime a primera mensagem
INT 21h

MOV AH,01
INT 21h
AND AL,0FH ;pegar o primeiro caractere e transforma em numero
MOV BL,AL

MOV AH,09
LEA DX,MSG2 ;imprime segunda mensagem
INT 21h

MOV AH,01
INT 21h
AND AL,0FH ;pegar o segundo caractere e transformar em numero
MOV CL,AL

XOR BH,BH ;zerar o contador BH
    
    REPETE:
        CMP BL,CL
        JB FIM
        SUB BL,CL ;subtrai o valor de CL em Bl
        INC BH ;QUOCIENTE
        JMP REPETE

    FIM:
       MOV AH,09
       LEA DX,MSG3
       INT 21h

       MOV AH,02
       MOV DL,BH
       OR DL,30h ;imprime o numero do resto e transforma em caractere OBS: so imprime qnd transforma para caractere
       INT 21h

       MOV AH,09
       LEA DX,MSG4
       INT 21h

       MOV AH,02
       OR BL,30h 
       MOV DL,BL ;imprime o numero do resto e transforma em caractere OBS: so imprime qnd transforma para caractere
       INT 21h


        MOV AH,4ch
        INT 21h
    endp
    END MAIN

