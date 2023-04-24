.MODEL SMALL
.STACK 100H
.DATA  
   STR1 DB 13,10, "HAY NHAP 1 KY TU THUONG (a/z)$"
   STR2 DB 13,10, "CHU HOA TUONG UNG LA:$"   
   STR3 DB 13,10, "KY TU KHONG PHAI CHU THUONG$"
.CODE
   MAIN PROC 
   MOV AX, @DATA
   MOV DS, AX
    
   MOV AH,9
   LEA DX, STR1
   INT 21H 
   
   MOV AH,8 
   INT 21H
   MOV BL, AL
   
   CMP BL, 'a'
   JNS CHECK1
    
   KHONGPHAICHU:
       MOV AH,9
       LEA DX, STR3
       JMP XUAT2
  
   CHECK1:                                                        
       CMP BL, '{'                 
       JS XUAT
       JNS KHONGPHAICHU       
       
   XUAT:
       MOV AH,9
       LEA DX, STR2
       INT 21H  
       
       MOV AH,2
       SUB BL, 32
       MOV DL, BL 
       
    
    XUAT2:
    INT 21H
   MAIN ENDP
   END MAIN
    
   