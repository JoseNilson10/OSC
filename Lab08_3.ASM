TITLE atividadeee
.MODEL small
.DATA
.CODE
main PROC
    xor bx,bx  
    mov cx,4

REPETE:
    mov ah, 1 
    int 21h
    ;vai pedir o numero ao usuario

    cmp al, 13 ;compara com o caractere enter
    je FIM
    cmp al, 41h ;verifica se é uma letra
    jl NUMERO

LETRA:
    sub al, 37h ;transforma em número
    shl bx, 4 
    ;faz o deslocamento para a esquerda de 4 casas
    add bl,al ;adiciona o número ao registrador
    loop REPETE
    jmp FIM

NUMERO:
    xor al, 30h
    ;Transforma em numero
    shl bx, 4
    add bl,al
    loop REPETE

FIM:

    mov ah, 4ch
    int 21h

main ENDP
end main