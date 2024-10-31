    .MODEL SMALL
.stack 100h
.DATA
    MATRIZ DB 4*4 DUP(?)
    MSG1 DB 'Digite os valores que deseja na Matriz:', 10,13, '$'
    MSG2 DB 'Sua Matriz eh: ',10,13,'$'
    MSG3 DB "A soma da matriz eh: $"
    MSG4 DB 13,10, "$"

.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX

    CALL MATRIZF ;chama procedimento
   CALL IMPRIMIR
    CALL SOMA
    MOV AH,4ch
    INT 21h
main ENDP

    MATRIZF PROC
        mov ah,09
        lea dx,MSG1
        INT 21h
        XOR BX,BX ;zera registrador linha
        XOR SI,SI ;zera registrador coluna
         COLUNA:
            MOV AH,1
            INT 21h
            MOV MATRIZ [BX][SI],AL ;passar o valor  que o usuario digitar para a matriz
            AND AL,0FH ;transforma em matriz
            INC SI ;incrementa a coluna
            CMP SI,4 ;se for igual a 4 vai para a linha
            JE LINHA
            JMP COLUNA

            LINHA:
                XOR SI,SI ;zera a coluna para começar em outra linha
                ADD BX,4 ;pula para proxima linha
                MOV AH,09 ;imprime a mensagem de pular linha
                LEA DX, MSG4
                INT 21h
                CMP BX,16 ;se for igual a 16, sai do loop
                JE FIM
                JMP COLUNA
            
            FIM:
                RET
            
    MATRIZF ENDP
    IMPRIMIR PROC
        XOR BX,BX ;zera
        XOR SI,SI
        MOV AH,09
        LEA DX,MSG2
        INT 21h
            COLUNA1:
            MOV AL,MATRIZ[BX][SI] ;passa o valor da posiçao da matriz para AL
             OR AL,30H ;transformação
             MOV DL,AL
             MOV AH,02
            INT 21h ;imprime
            INC SI
            CMP SI,4
            JE LINHA1
            JMP COLUNA1

            LINHA1:
            MOV AH,09
            LEA DX,MSG4
            INT 21h
            XOR SI,SI
            ADD BX,4
            CMP BX,16
            JE FIM1
            JMP COLUNA1
            FIM1:
            RET
    IMPRIMIR    ENDP
    SOMA PROC
        XOR BX,BX ;Zera os registradores
        XOR DX,DX
        XOR SI,SI
        MOV AH,09 
        LEA DX, MSG3
        INT 21h
        XOR DX,DX
        COLUNA2:
            add dL, MATRIZ[BX][SI] ;adiciona os valores da matriz em DL
            INC SI
            CMP SI,4
            JE LINHA2
            JMP COLUNA2
            LINHA2:
            XOR SI,SI
            ADD BX,4
            CMP BX,16
            JE SAID
            JMP COLUNA2
            SAID:
         call imp_soma           
                    RET
    SOMA    ENDP
 imp_soma proc
            xor cx,cx
            xor bx,bx
            xor ax,ax
            MOV AL,DL
            xor dx,dx
            MOV Bl,10 ;a divisão vai ser feita com bl, por isso tem que colocar o 10 para ser o divisor
            cmp al,0 ;se al for 0, ja vai para o final
            je final
            repete:
            cmp al,0
            JE repete2
            DIV Bl ;dividiu
            PUSH AX ;colocou o quociente na pilha
            inc cx ;incrementa o contador de divisoes
            xor ah,ah
            jmp repete
            repete2:
            POP DX ;pega os valores
            xchg dl,dh ;troca para o resto
            OR DL,30H ;transforma em caractere
            mov ah,02 ;imprime a soma
            INT 21H
            loop repete2
            jmp fim2
            final:
                mov al,'0'
                mov dl,al
                mov ah,2
                int 21h
            fim2:
            RET 
 imp_soma           ENDP
END MAIN


