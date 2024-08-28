Title numero
.model small
.data
MSG1 DB "Digite um caractere: $"
MSG2 DB 10,13,"O caractere digitado eh um numero$"
MSG3 DB 10,13,"O caractere digitado eh uma letra$"
MSG4 DB 10,13,"O caractere eh desconhecido$"
.code
MAIN PROC

MOV AX,@DATA
MOV DS,AX
;ACESSAR DATA

MOV AH,9
LEA DX,MSG1
Int 21h
;mostrar string

MOV AH,1
INT 21h
;ler caractere

MOV BL,AL
;passar AL para BL

CMP BL,48
JB CARACTER
;se o caractere for menor que 48 é desconhecido
CMP BL,57
JBE  NUMERO
;se for menor ou igual a 57 é numero



CMP BL,65
JB CARACTER
;se for menor que 65 é desconhecido
CMP BL,90
JBE LETRA
;se for menor ou igual a 90 é letra

CMP BL,97
JB CARACTER
;se for menor a 97 é desconhecido
CMP BL,122
JBE LETRA
;se for menor ou igual a 122 é letra

CARACTER:

MOV AH,9
LEA DX,MSG4
Int 21h
;se a comparação der em desconhecido ela vem para esta função


JMP FIM

NUMERO:
;se a comparação der em numero ela vem pra esta função
    MOV AH,9
    LEA DX,MSG2
    INT 21h
    ;imprime string
    JMP FIM
    ;pula para o fim do programa

LETRA:
;se a comparação der em letra ela vem pra esta função
    MOV AH,9
    LEA DX,MSG3
    INT 21h
    ;imprime string


FIM:
    MOV AH,4ch
    int 21h
    ;fim do programa

main endp
END MAIN