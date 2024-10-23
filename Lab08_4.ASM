TITLE atividadeee
.MODEL small
.DATA
.CODE
main PROC
    xor bx,bx 
    ;zerar Bx
    mov bx, 4B6Bh ;designado em hexadecimal
    mov cx,4 
    ;define um loop de 4 vezes

REPETE:

    mov dl,bh
    shr dl, 4 
    ;desloca dl 4 casas para a direita

    cmp dl, 10 
    ;verifica se é numero ou letra
    jl NUMERO

LETRA:
    add dl, 37h ;transformacao em letra
    shl bx, 4 ;desloca bx 4 casas para a esquerda

    mov ah, 2 
    int 21h

    loop REPETE
    jmp FIM

NUMERO:
    add dl, 30h 
    ;Vai transforma número em caractere
    shl bx, 4 ;desloca bx em 4 casas para o lado esquerdo
    mov ah, 2 
    int 21h

    loop REPETE

fim:

    mov ah, 4ch
    int 21h
    
main ENDP
end main