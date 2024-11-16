.MODEL SMALL
.STACK 100H
.DATA
    MSGBOAS DB "                               PROJETO FINAL-OSC$"
    MATRIZ  DB 20*20 DUP('0')
    MATRIZ1 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            DB 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0
            DB 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

    MATRIZ2 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0  
            DB 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

    MATRIZ3 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0

    MATRIZ4 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0

    MATRIZ5 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

    MATRIZ6 DB 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0  
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0
            DB 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1

    MATRIZ7 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,1
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0  
            DB 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

    MATRIZ8 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

    MATRIZ9 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

 MATRIZ10   DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0
            ;matrizes utilizadas nas comparações do jogo

    PULA DB 13,10, "$"
    ESPAÇO DB "  $"
ESPAÇO1 DB  " $"
    TECLA DB 13,10,"DIGITE TECLA ENTER PARA PROSSEGUIR: $"
    SAIR DB 13,10,"SE DESEJA SAIR, PRESSIONE A TECLA ESC $"
    erroro DB 13,10,"PEDIMOS PARA DIGITAR ENTERRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR$"
    MSGLINHA DB 13,10, "DIGITE A LINHA QUE DESEJA ATIRAR (de A a T): $"
    MSGCOLUNA DB 13,10, "DIGITE A COLUNA QUE DESEJA ATIRAR(0 A 19): $"
    RESULTADO DB ?
    LINHAR DW ?
    ACERTOU DB 13,10,"ACERTOU O ALVO$"
    ERRO DB 13,10,"ERROU O ALVO$"
    FIMTENTATIVAS DB 13,10,"                                     FIM DE JOGO$"
    VALORR DB ?
    ;mensagens utilizadas no programa
    
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    MOV AH,09
    LEA DX, MSGBOAS
    INT 21h
    CALL PULA_LINHA
    CALL NUMERO_ALEATORIO ;chama o procedimento que vai gerar um numero aleatorio, que sera utilizado para escolher uma matriz de comparação

  VOLTA:
    
     CALL IMPRIMIR ;chama o procedimento que vai imprimir a matriz com os tiros 
     CALL TRANSFORMAÇÃO ;transformaçao de letra para numero decimal e o usuario escolhe a linha que deseja atirar
     CALL ENTRADA_DECIMAL ;chama o procedimento que pega o numero que a o usuario quer escolher na coluna
      CALL PULA_LINHA ;procedimento que pula linha
     CALL COMPARA ;procedimento que compara o a matrizes de comparação com a matriz em que o usuario atirou
     INC CX
     CMP CX, 60 ;compara com o número maximo de tentativas
     JBE VOLTA ;se for maior encerra o programa
     CALL PROGRAMAF
    ENDP
     NUMERO_ALEATORIO PROC
        XOR CX,CX
        XOR AX,AX
        XOR DX,DX
        XOR BX,BX
        MOV AH,2 ;esta função pega o frame tick 
        INT 1AH
        XOR AX,AX
        MOV AX,DX
        XOR DX,DX
        XOR CX,CX
        divide:
        ;transfomaçao do valor em que pegamos na função anterior em um valor de 0 a 9
        MOV CX,10
        DIV CX  ;divide o valor
        CMP DL, 10 
        JAE divide ; compara para obter valores entre 0 e 9 (quantidade de matrizes), se não for volta para o loop
        MOV RESULTADO,DL ;move o valor para o resultado
        
        RET
        NUMERO_ALEATORIO ENDP
    IMPRIMIR PROC
        imprimirr:
            XOR SI,SI
            XOR CL, CL
            XOR CL, CL
            MOV CL, 'A'
            XOR BX,BX
            MOV BX, 0
            MOV AH, 09 ;função DOS para imprimir a mensagem 
             LEA DX, ESPAÇO
             INT 21h
            COLUNA:
             MOV DL, CL ;move A,B,C,D.... para DL para a impressão
             MOV AH,02 ;função DOS para imprimir caractere
            INT 21h
             MOV AH, 09 ;função DOS para imprimir a mensagem 
             LEA DX, ESPAÇO
             INT 21h
            INC CL 
            COLUNA1:
            MOV AL,MATRIZ[BX][SI]
             MOV DL,AL 
             MOV AH,02 ;imprime o elemento da matriz
            INT 21h
             INC SI ;incrementa si, para o próximo elemento
            MOV AH, 09  ;função DOS para imprimir a mensagem 
            LEA DX, ESPAÇO
            INT 21h
            CMP SI,19 ;compara com 19 (20 colunas de 0 a 19)
            JAE LINHA
            JMP COLUNA1

            LINHA:
            MOV AH,9 ;função DOS para imprimir a mensagem 
            LEA DX,PULA
            INT 21h
            XOR SI,SI
            XOR AX,AX
            CMP BX, 380  ;compara com 380, pois cada linha soma 20
             JE FIM ;se for igual a 380 pula para fim
             ADD BX, 20 ;adiciona 20 em BX (referente a linha)
             MOV AH, 09 ;função DOS para imprimir a mensagem 
             LEA DX, ESPAÇO
             INT 21h
             JMP COLUNA
             xor cx,cx
             inc cx

            FIM:
                MOV AH, 09
                LEA DX, SAIR
                INT 21H
                 XOR AX,AX
            RET 
    IMPRIMIR ENDP

   
    PULA_LINHA PROC
        XOR AX,AX
        XOR BX,BX
        XOR CX,CX
        SALTA:  
        MOV AH,09
        LEA DX,PULA
        INT 21h
              MOV AH,09
                LEA DX,TECLA
                INT 21h
                    MOV AH,01
                    INT 21h
                    CMP AL,13
                    JNE NOVAMENTE
                   MOV AH, 06h            
        MOV AL, 0             
        MOV BH, 07h            
        MOV CX, 0              
        MOV DX,184fh   
      INT 10h  
      JMP FINALL              
      NOVAMENTE:
      MOV AH,09
      LEA DX,PULA
      INT 21h
      MOV AH,09
      LEA DX,erroro
      INT 21h
      JMP SALTA
      FINALL:
        RET
        PULA_LINHA ENDP
    
        TRANSFORMAÇÃO PROC 
              Volt:
                xor bx, bx
                MOV AH,09
                LEA DX,MSGLINHA ;pede ao usuário que insira um letra maiuscula de A-T
                 INT 21h
                MOV AH,01 ;entrada de um caractere de A-T (Maiusculo)
                INT 21h
                CMP AL, 27
                JE FINAL4
                CMP AL, 'T'
                JA Volt ;se maio que T pede novamente o caractere
                MOV BL,AL
                XOR AX,AX
                MOV AL,BL
                sub al,41h ;Transforma em decimal ex: A-0  B-1    C-2.........
                xor bx,bx
                mov bx,20 ;Multiplica por 20 referente as linhas
                MUL BX
                
                MOV LINHAR,AX ;armazena a linha
                ret
                FINAL4:
                CALL PROGRAMAF
            TRANSFORMAÇÃO endp 
            ENTRADA_DECIMAL PROC
        entdecimal:
                XOR BX,BX
                XOR DX,DX
                XOR AX,AX
                MOV AH,09
                LEA DX,MSGCOLUNA ;Pede ao usuário que insira um número de 0 a 19
                INT 21h
                ENTRADA__DECIMAL2:
                MOV AH,1
                INT 21h
                CMP AL, 13 ;compara com ENTER
                JE FINAL ;Se for igual, pula para final
                CMP AL, 27 ;compara com ESC
                JE FINAL3 ;Se for igual, pula para final3
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
                JMP ENTRADA__DECIMAL2
                FINAL:
           
                MOV SI,BX
                RET
                FINAL3:
                CALL PROGRAMAF ;chama o proc de finalização
             ENTRADA_DECIMAL ENDP
        COMPARA PROC
        XOR BX,BX
        XOR DX, DX
         MOV BX, LINHAR ;pega o valor da linha e move para bx
         MOV DI, SI
        CMP RESULTADO,0 ;se o numero aleatorio for 0
        JE MATRIZZ1 ;pula para a matrizz1
        JNE PUL1 ;se não tenta com a próxima
           MATRIZZ1: 
                        MOV AL,MATRIZ1 [BX][DI] 
                        CMP AL, 0 ;compara se o elemento da matriz é 0
                        JE ERROU1 ;se for 0 pula para errou, se for 1 acertou
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI],'1' ;por ter acertado move 1 para a matriz inicial 
                        JMP final2
                        ERROU1:
                                MOV AH,09 
                                LEA DX,ERRO
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*' ;por ter errado move * para a matriz inicial
                                MOV MATRIZ[BX][SI], AL
                jmp final2

            ;os códigos abaixo se repetem igual o trecho acima
        PUL1:
        CMP RESULTADO,1
        JE MATRIZZ2
        JNE PUL2
            MATRIZZ2: 
                        MOV al,MATRIZ2 [BX][DI]
                        CMP AL, 0
                        JE ERROU2
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI],'1'
                        JMP final2
                        ERROU2:
                                MOV AH,09 
                                LEA DX,ERRO 
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*'
                                MOV MATRIZ[BX][SI], AL
                jmp final2
        PUL2:
        CMP RESULTADO,2
        JE MATRIZZ3
        JNE PUL3
              MATRIZZ3: 
                        MOV al,MATRIZ3 [BX][DI]
                        CMP AL,0
                        JE ERROU3
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI],'1'
                        JMP final2
                        ERROU3:
                                MOV AH,09 
                                LEA DX,ERRO 
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*'
                                MOV MATRIZ[BX][SI], AL
                jmp final2
        PUL3:
        CMP RESULTADO,3
        JE MATRIZZ4
        JNE PUL4
             MATRIZZ4: 
                        MOV al,MATRIZ4 [BX][DI]
                        CMP AL,0
                        JE ERROU4
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI],'1'
                        JMP final2
                        ERROU4:
                                MOV AH,09 
                                LEA DX,ERRO 
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*'
                                MOV MATRIZ[BX][SI], AL
                jmp final2

        PUL4:
        CMP RESULTADO,4
        JE MATRIZZ5
        JNE PUL5
            MATRIZZ5: 
                        MOV al,MATRIZ5 [BX][DI] 
                        CMP AL,0
                        JE ERROU5
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI],'1'
                        JMP final2
                        ERROU5:
                                MOV AH,09 
                                LEA DX,ERRO 
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*'
                                MOV MATRIZ[BX][SI], AL
                jmp final2
        PUL5:
        CMP RESULTADO,5
        JE MATRIZZ6
        JNE PUL6
                 MATRIZZ6: 
                        MOV al,MATRIZ6[BX][DI]
                        CMP AL,0
                        JE ERROU6
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI],'1'
                        JMP final2
                        ERROU6:
                                MOV AH,09 
                                LEA DX,ERRO 
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*'
                                MOV MATRIZ[BX][SI], AL
                jmp final2 

        PUL6:
        CMP RESULTADO,6
        JE MATRIZZ7
        JNE PUL7
             MATRIZZ7: 
                        MOV al,MATRIZ7 [BX][DI]
                        CMP AL,0
                        JE ERROU7
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI], '1'
                        JMP final2
                        ERROU7:
                                MOV AH,09 
                                LEA DX,ERRO 
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*'
                                MOV MATRIZ[BX][SI], AL
                jmp final2   
        PUL7:
        CMP RESULTADO,7
        JE MATRIZZ8
        JNE PUL8
                MATRIZZ8: 
                        MOV al,MATRIZ8 [BX][DI]
                        CMP AL,0
                        JE ERROU8
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI],'1'
                        JMP final2
                        ERROU8:
                                MOV AH,09 
                                LEA DX,ERRO 
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*'
                                MOV MATRIZ[BX][SI], AL
                jmp final2
        PUL8:
        CMP RESULTADO,8
        JE MATRIZZ9
        JNE PUL9
             MATRIZZ9: 
                        MOV al,MATRIZ9 [BX][DI]
                        CMP AL,0
                        JE ERROU9
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI],'1'
                        JMP final2
                        ERROU9:
                                MOV AH,09 
                                LEA DX,ERRO
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*'
                                MOV MATRIZ[BX][SI], AL
                jmp final2   
        PUL9:
        CMP RESULTADO,9
        JE MATRIZZ10
           MATRIZZ10: 
                        MOV al,MATRIZ10 [BX][DI]
                        CMP AL,0
                        JE ERROU10
                        MOV AH,09
                        LEA DX,ACERTOU
                        INT 21h
                        MOV AH,09 
                        LEA DX,PULA 
                        INT 21h
                        MOV MATRIZ[BX][SI],'1'
                        JMP final2
                       ERROU10:
                                MOV AH,09 
                                LEA DX,ERRO 
                                INT 21h
                                MOV AH,09 
                                LEA DX,PULA 
                                INT 21h
                                XOR AL, AL
                                MOV AL, '*'
                                MOV MATRIZ[BX][SI], AL
                jmp final2
           
             
                final2:
                XOR CX, CX
           RET
         COMPARA  ENDP
      PROGRAMAF PROC
        CALL PULA_LINHA
        MOV AH, 09 ;função dos para imprimir a mensagem
        LEA DX, FIMTENTATIVAS
        INT 21h
       MOV AH,4CH ;FINALIZA O PROGRAMA
    INT 21H
        RET
        PROGRAMAF ENDP

END MAIN