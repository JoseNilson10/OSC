ZERAR MACRO REG
    XOR REG, REG
ENDM

IMPRIMIR_STRING MACRO STRING
    MOV AH, 9
    LEA DX, STRING
    INT 21H
ENDM

IMPRIMIR_CARACTER MACRO CARACTER
    MOV AH, 2
    MOV DL, CARACTER
    INT 21H
ENDM

LER_CARACTER MACRO
    MOV AH, 1
    INT 21H
ENDM

.MODEL SMALL
.STACK 0100H
.DATA
    MSG_NUMERO DB 10,13,"DIGITE O NUMERO: $"
    MSG_DECIMAL DB 10,13, "DIGITE SE O NUMERO EH POSITIVO OU NEGATIVO: $"
    MSG_RESULTADO DB 10,13, "O RESULTADO DA CONVERSAO E: ",10,13,"$"
    MSG_ENTRADA DB "DIGITE A BASE DE ENTRADA DO NUMERO: (1) BINARIO / (2) HEXADECIMAL / (3) DECIMAL",10,13,"$"
    MSG_SAIDA DB 10,13,"DIGITE A BASE DE SAIDA DO NUMERO: (1) BINARIO / (2) HEXADECIMAL / (3) DECIMAL",10,13,"$"
    MSG_HEXADECIMAL DB 10,13,"DIGITE AS LETRAS EM MAIUSCULO!",10,13,"$"

    BASE_SAIDA DB ?
    BASE_ENTRADA DB ?
    NUM_NEGATIVO DB ?
    TOTAL_DEC DW ?
    ;SALVA OS VALORES NAS VARIAVEIS
.CODE

LER_VARIAVEIS PROC
    IMPRIMIR_STRING MSG_ENTRADA
    LER_CARACTER
    AND AL, 0FH
    ;TRANSFORMA
    MOV BASE_ENTRADA, AL
    ;PASSA O VALOR PARA VARIAVEL

    IMPRIMIR_STRING MSG_SAIDA
    LER_CARACTER
    AND AL, 0FH
    MOV BASE_SAIDA, AL
    ;PASSA O VALOR PARA A VARIAVEL

RET
LER_VARIAVEIS ENDP
;FIM PROCEDIMENTO PARA LEITURA DE VARIAVEIS 
;ENTRADA NO PROCEDIMENTO QUE O USUARIO DESEJA
;SAIDA DOS VALORES
SAIDA PROC
    CMP BASE_SAIDA, 1
    JE S_BINARIO

    CMP BASE_SAIDA, 2
    JE S_HEXADECIMAL

    CMP BASE_SAIDA, 3   
    JE S_DECIMAL

    S_BINARIO:
        MOV CX, 16
        IMPRIMIR_STRING MSG_RESULTADO
        SAIDA_BINARIO:
            ROL BX, 1
            ;ROTACIONA      
            JC UM
            IMPRIMIR_CARACTER '0'
            DECREMENTAB:
                DEC CX
                ;DECREMENTA O CONTADOR
                CMP CX, 0
                ;COMPARA COM 0, SE FOR, SAI DO LOOP
                JE ENCERRA1
                JMP SAIDA_BINARIO
            UM:
                IMPRIMIR_CARACTER '1';
                ;IMPRIME O VALOR 1
                JMP DECREMENTAB
    ENCERRA1:
        JMP ENCERRA
    
    S_HEXADECIMAL:
        IMPRIMIR_STRING MSG_RESULTADO
        
        MOV CX, 4
        ;COLOCA O  VALOR DO CONTADOR EM 4
         
        ZERAR DX
        MOV AH, 2

        SAIDA_HEXADECIMAL:
            MOV DL, BH  
            SHR DL, 4
            ;MOVE 4 CASAS
            CMP DL, 10
            ;COMPARA
            JB NUMERO_HEXA
            ADD DL, 37H
            ; SOMA 37H, AO VALOR EM QUE ESTA DL
            INT 21H

            DECREMENTAH:
                SHL BX, 4
                DEC CX
                CMP CX, 0   
                JE ENCERRA
                JMP SAIDA_HEXADECIMAL
            NUMERO_HEXA:
                ADD DL, 30H
                INT 21H
                JMP DECREMENTAH
    
    S_DECIMAL:
        IMPRIMIR_STRING MSG_RESULTADO
        ZERAR AX
        MOV AX, BX
        MOV BX, 10
        ZERAR CX
        ZERAR DX
        ZERAR SI
        ZERAR DI
        
        TEST AX, AX
        ;TESTA, MAS NÃO MUDA O VALOR EM AX, USADO PARA SO TESTAR O VALOR SEM ALTERAR O MESMO
        JNS POSITIVE

        NEG AX
        PUSH AX
        IMPRIMIR_CARACTER '-'
        ;MOSTRA SE EH NEGATIVO
        POP AX

        POSITIVE:
            CMP AX, 0
            JE EXIBIR_DECIMAL
            ZERAR DX
            DIV BX
            ;DIVIDE O VALOR EM BX, OU SEJA, AX DIVIDO POR BX
            PUSH DX
            ;COLOCA O RESTO NA PILHA
            INC CX          
            ;INCREMENTA PARA SER USADO COMO CONTADOR NO FUTURO
            ZERAR DX
            JMP POSITIVE
        
        EXIBIR_DECIMAL:
            POP DX
            ADD DX, 30H
            IMPRIMIR_CARACTER DL
            LOOP EXIBIR_DECIMAL
    
    ENCERRA:
    RET
SAIDA ENDP

ENTRADA PROC
    CMP BASE_ENTRADA, 1
    JE E_BINARIO
    ;SE ESCOLHER A OPÇÃO 1, VAI PARA BINARIO

    CMP BASE_ENTRADA, 2
    JE E_HEXADECIMAL

    CMP BASE_ENTRADA, 3
    JE E_DECIMAL
;ENTRADA DO BINARIO
    E_BINARIO:
        ZERAR BX
        ZERAR CX
        IMPRIMIR_STRING MSG_NUMERO
        ENTRADA_BINARIO:
            LER_CARACTER
            AND AL, 0FH
            ;TRANSFORMAÇÃO
            CMP AL, 13
            ;COMPARA SE EH CARRY
                JE FINAL1
                ;SE FOR CARRY, PULA PARA O FIM

            SHL BX, 1
            ;MOVE UMA CASA PARA O PROXIMO NUMERO DO BINARIO
            OR  BL, AL
            INC CX      
            JMP ENTRADA_BINARIO

        FINAL1:
        JMP FINAL

    E_HEXADECIMAL:
        ZERAR BX
        MOV CX, 4
        IMPRIMIR_STRING MSG_HEXADECIMAL
        IMPRIMIR_STRING MSG_NUMERO
        ENTRADA_HEXADECIMAL:
            LER_CARACTER
            CMP AL, 13
            JE FINAL2
            ;CARRY

            CMP AL, 39H
            JB MENOR_QUE_10
            ;COMPARA E PULA
            
            SUB AL, 55
            SHL BX, 4
            OR  BL, AL  

            DIMINUI_H:  
                DEC CX
                CMP CX, 0
                JE FINAL2
                ;SE CONTADOR FOR 0, PULA
                JMP ENTRADA_HEXADECIMAL

            MENOR_QUE_10:
            AND AL, 0FH
            ;TRANFORMAÇÃO
            SHL BX, 4
            ;MOVE 4 CASAS
            OR  BL, AL
            JMP DIMINUI_H

        FINAL2:
        JMP FINAL

    E_DECIMAL:
        ZERAR BX
        IMPRIMIR_STRING MSG_DECIMAL
        IMPRIMIR_STRING MSG_NUMERO   

        LER_CARACTER
        CMP AL, '-' 
        ;COMPARA COM O CARACTERE, SINAL DE NEGATIVO, SE FOR IGUAL SIGNIFICA QUE EH UM VALOR NEGATIVO
        JE NEGATIVO
            ;ENTRADA DECIMAL
            ENTRADA_DECIMAL:
                LER_CARACTER
                CMP AL, 13
                JE FINAL3
                ;CARRY
                AND AX, 0FH
                PUSH AX
                ;COLOCA O VALOR EM AX NA PILHA
                MOV AX, 10
                MUL BX
                ;MULTIPLICA BX,AX
                POP BX
                ;COLOCA O VALOR QUE ESTAVA NA PILHA EM AX, EM BX
                ADD BX, AX
                ;SOMA OS DOIS
                JMP ENTRADA_DECIMAL

        NEGATIVO:
            MOV NUM_NEGATIVO, 1
            JMP ENTRADA_DECIMAL

    FINAL3:
        CMP NUM_NEGATIVO, 1
        JNE FINAL
        
        NEGAR:
            NEG BX
            ;NEG

    FINAL:
    RET
ENTRADA ENDP
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    ;CHAMA OS PROCEDIMENTOS

    CALL LER_VARIAVEIS
    CALL ENTRADA
    CALL SAIDA
    
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
