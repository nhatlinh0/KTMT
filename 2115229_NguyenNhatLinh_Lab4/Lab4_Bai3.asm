.MODEL SMALL
.STACK 100H
.DATA   
STR1 DB 13,10, "NHAP 1 KY TU THUONG (a/z)$"
ENDL DB 13,10, "$"
STR2 DB 13,10, "CHU HOA TUONG UNG LA: $"
.CODE

BAI3 PROC 
   MOV AX, @DATA
   MOV DS, AX
   LAP:
   MOV AH,9
   LEA DX, STR1
   INT 21H
   
   MOV AH,1
   INT 21H
   MOV BL, AL
   
   CMP BL, "a"
   JNS CHECK1
   
   JMP LAP
   
   CHECK1:
   CMP BL, "{"
   JS XUAT1
   JNS LAP 
   
   XUAT1:   
   MOV AH,9
   LEA DX,STR2
   INT 21H
   JMP CHUHOA  
   
   CHUHOA:
   SUB BL, 32  
   MOV AH,2
   MOV DL, BL 
   JMP XUAT
   
   XUAT:     
   INT 21H 
   
   MOV AH, 4Ch
   INT 21H
         
   RET
BAI3 ENDP
   
END 