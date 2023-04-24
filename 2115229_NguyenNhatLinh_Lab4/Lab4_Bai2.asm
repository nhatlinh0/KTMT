.MODEL SMALL
.STACK 100H
.DATA 
STR1 DB 13,10, "NHAP 1 KY TU: $"
STR2 DB 13,10, "KY TU LA CHU $"   
STR3 DB 13,10, "KY TU LA SO $"
STR4 DB 13,10, "KY TU KHAC CHU/SO $"
.CODE

BAI2 PROC

    MOV AX, @DATA
    MOV DS, AX
    LAP:
    
    MOV AH,9
    LEA DX, STR1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP AL, "a"
    JNS CHECK1
    
    CMP AL, "A"
    JNS CHECK2
    
    CMP AL, "0"
    JNS CHECK3
    
    JMP XUATKPHAICHU
    CHECK1:
    CMP AL, "{"
    JS XUATCHU
    JNS XUATKPHAICHU   
    
    CHECK2:   
    CMP AL, "["  
    JS XUATCHU
    JNS XUATKPHAICHU      
    
    CHECK3:  
    CMP AL, ":"
    JS XUATSO
    JNS XUATKPHAICHU 
    
    XUATCHU:
    MOV AH,9
    LEA DX, STR2
    JMP XUAT  
    
    XUATSO:
    MOV AH,9
    LEA DX, STR3
    JMP XUAT  
    
    XUATKPHAICHU:
    MOV AH,9
    LEA DX, STR4
    JMP XUAT
    
    XUAT:
    INT 21H     
    CMP BL, 1Bh
    LOOPNE LAP
 
    MOV AH, 4Ch
    INT 21H 
    RET
      
BAI2 ENDP

    