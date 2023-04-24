 .MODEL SMALL
.STACK 100H
.DATA 
NHAP1 DB 13,10, "NHAP 1 KY TU$"
ENDL DB 13,10, "$"
NHAP2 DB 13,10, "KY TU LA SO$"
NHAP3 DB 13,10, "KY TU LA CHU$"
NHAP4 DB 13,10, "KY TU DA NHAP KHAC CHU/SO$"
.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX  
     LEA DX, NHAP1
     MOV AH,9
     INT 21H 
     LEA DX, ENDL
     MOV AH,9
     INT 21H
      
     MOV AH, 1
     INT 21H 
     
     CMP AL, 61H
     JNS TB4
        
     CMP AL, 41H
     JNS TB3
     
      
     CMP AL, 30H
     JNS TB2
     
     JMP XUATKPHAICHUSO
        
     TB2:   
        CMP AL, 3AH
        JS XUATSO
        JNS XUATKPHAICHUSO
     
     TB3:
              
        CMP AL, 5BH
        JS XUATCHU
        JNS XUATKPHAICHUSO
     TB4:
        CMP AL, 7BH
        JS XUATCHU
        JNS XUATKPHAICHUSO      
     XUATCHU:
        LEA DX, NHAP3 
        JMP XUAT
     XUATSO:
        LEA DX, NHAP2
        JMP XUAT
     XUATKPHAICHUSO:
        LEA DX, NHAP4  
     XUAT:
        MOV AH,9
        INT 21H
     
         
        
        
MAIN ENDP
END MAIN