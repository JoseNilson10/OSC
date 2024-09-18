TITLE Atividade
.MODEL SMALL
.STACK 100h
.CODE
    MAIN PROC

    ;Faz com que BL inicie em 61h(a)
    MOV  BL,61h
   
    MOV  CX,4d ;vai deixar 4 caracteres em uma linha
    MOV  BH,7Ah;7 na Tabela ASCII
        
    MINUSCULAS:
        MOV  AH,2
        MOV  DL,BL
        ;vai armazenar o caractere em BL
        INT  21h
        INC  BL;Proxima letra
        CMP  BL,BH
        ;Caso BL seja maior que BH, o programa  pula para o FIM
        JA   FIM
        ;Caso a comparação de negativa, o loop continua.

        LOOP MINUSCULAS
    
    ESPACO:    
        ;Exibe o caractere para pular uma linha.
        MOV  AH,2
        MOV  DL,10d
        INT  21h
        ;Reinicia o ciclo do loop em 4 vezes.
        MOV  CX,4d
        ;Obrigatoriamente volta para o label "MINUSCULAS".
        JMP  MINUSCULAS

    FIM:       
        ;Finaliza o programa
        MOV  AH,4Ch
        INT  21h

    MAIN ENDP

END MAIN
