Title atividadee
.model small
.data
    MSG1 DB 13,10,'Digite o primeiro numero: $'
    MSG2 DB 13,10,'Digite o segundo numero: $'
    MSG3 DB 13,10,'A soma dos dois numeros eh: $'
.code
Main proc
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,9
    LEA DX,MSG1
    INT 21h
    ;le a string
    MOV AH,1
    INT 21h
    MOV bl,al
    ;LE O CARACTERE
    SUB bL,30h
    ;SUBTRAÇÃO DO PRIMEIRO CARACTERE
    MOV AH,9
    LEA DX,MSG2
    INT 21h
    ;MOSTRAR A SEGUNDA STRING


    MOV AH,1
    INT 21h
    ;LE O CARACTERE
    MOV Bh,aL
    SUB Bh,30h
    ;SUBTRAÇÃO

    MOV AH,9
    LEA DX,MSG3
    INT 21h
    ;LER TERCEIRA STRING 

    ADD BL,bh
    ADD BL,30h

    MOV AH,2
    MOV DL,BL
    int 21h
    ;IMPRIME CARACTERE

    MOV AH,4ch
    INT 21h
    Main endp
    END MAIN
