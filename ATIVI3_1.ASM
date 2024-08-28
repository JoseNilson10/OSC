Title Numero
.model small
.stack 100h
.data
    MSG1 DB "Digite um caractere: $"
    SIM  DB 10,13,"O caractere digitado eh um numero.$"
    NAO  DB 10,13,"O caractere digitado nao eh um numero.$"
.code
main proc
    ;acesso as variaveis do .data
    MOV AX,@DATA
    MOV DS,AX
    ;exibir string na tela
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    ;ler o caractere digitado
    MOV AH,1
    INT 21h
    ;O valor de AL vai para BL
    MOV BL,AL
    ;comparar o valor de bl com 48
    CMP BL,48
    ;Se o caractere em bl for menor que 48, vai saltar para o rotulo com o nome NAOENUMERO
    JB NAOENUMERO
    ;Compara o caractere bl com valor 57
    CMP BL,57
    ;Se o caractere for maior que 57, vai saltar para o rotulo com o nome NAOENUMERO
    JA NAOENUMERO

    ;a partir de agora, quer dizer que o caractere eh um numero
    MOV AH,9
    LEA DX,SIM
    INT 21h
    ;vai saltar para o fim
    JMP FIM
    
    ;Aqui, define o rotulo NAOENUMERO
    NAOENUMERO:
        ;exibir a string de negação
        MOV AH,9
        LEA DX,NAO
        INT 21h
    FIM:
    ;Finaliza o programa
        MOV AH,4ch
        INT 21H


    ;4)O programa mostra se o caractere digitado pelo usuario é um numero ou não
main endp
END MAIN