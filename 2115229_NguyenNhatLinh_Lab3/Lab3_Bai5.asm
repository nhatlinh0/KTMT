.MODEL SMALL
.STACK 100H
.DATA 
TB1 DB 13,10, "NAM KY TU DUNG SAU$"
TB2 DB 13,10, "$"
.CODE

MAIN PROC
   MOV AX, @DATA
    MOV DS,AX
    MOV AH,1 
    INT 21H
    MOV BL,AL
    MOV AH,9
    LEA DX, TB1
    INT 21H
    LEA DX, TB2
    INT 21H
    
    
    MOV AH,2
    MOV DL, BL
    DEC DL
    MOV CX,5
    LAP:    
        DEC DL
        LOOP LAP
    
    MOV CX,5
    LAP2: 
    
    INC DL
    INT 21H
    LOOP LAP2  
MAIN ENDP
END MAIN