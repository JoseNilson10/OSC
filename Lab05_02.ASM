TITLE Atividade
.MODEL SMALL
.DATA
    
    MSG1 DB "*$"           
    MSG2 DB 10,13,"*$"     
.STACK 100h
.CODE
    MAIN PROC
        
        ;Permissão ao programa acessar o .DATA
        MOV AX,@DATA
        MOV DS,AX
        ;Especificando que o ciclo deve rodar 50 vezes antes de sair do loop.
        MOV CX,50D

    LINHA1: 
        
        ;Exibição do primeiro asterisco, na mesma linha.
        MOV AH,9
        MOV DX,OFFSET msg1
        INT 21h
        ;REINICIA NO LINHA1
        LOOP LINHA1
        ;Reinicia o contador do loop em 50 ciclos para o próximo passo.
        MOV CX,50D
        ;Pula para a próxima etapa
        JMP LINHA

    LINHA:

        ;Exibe o asterisco em linhas diferentes
        MOV AH,9
        MOV DX,OFFSET MSG2
        INT 21h
        ;Realiza o loop 50 vezes até que CX chegue a 0
        LOOP LINHA
        ;Pula para o final.
        JMP FIM

    FIM:
    
        ;Finaliza o programa
        MOV AH,4Ch
        INT 21h
    
    MAIN ENDP

END MAIN