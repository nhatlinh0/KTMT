.MODEL SMALL
.STACK 100H
.DATA          
STR1 DB 13,10, "NHAP CHUOI: $"
STR2 DB 13,10, "CHUOI NGUOC: $"
.CODE
MAIN PROC
    MOV AX, @DATA            
    MOV DS, AX
    
    MOV AH,9
    LEA DX,STR1
    INT 21H
    
    XOR CX, CX
    NHAP:
    MOV AH,1
    INT 21H
    CMP AL, 0DH 
    JE XUAT1
    PUSH AX 
    ADD CX,1
    JMP NHAP
    
    XUAT1:
    MOV AH,9
    LEA DX, STR2
   
    INT 21H 
    
    XUAT2:
    POP AX
    MOV AH,2
    MOV DL, AL
    INT 21H 
    SUB CX,1
    CMP CX,0 
    JNE XUAT2
    
    MOV AH, 4Ch
    INT 21H
   
MAIN ENDP
END MAIN