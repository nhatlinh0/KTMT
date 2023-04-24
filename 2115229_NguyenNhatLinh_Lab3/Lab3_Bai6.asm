.MODEL SMALL
.STACK 100H
.DATA
    NHAP DB 13,10, "NHAP 1 KY TU$"
    TB1 DB 13,10, "NAM KY TU DUNG TRUOC$"
    TB2 DB 13,10, "NAM KY TU DUNG SAU$"
    ENDL DB 13,10, "$"
.CODE

MAIN PROC
     MOV AX,@DATA
     MOV DS,AX
     
     MOV AH,9
     LEA DX, NHAP
     INT 21H 
     
     MOV AH,9
     LEA DX, ENDL
     INT 21H 
     
     MOV AH,1
     INT 21H
     MOV BL,AL 
     
     MOV AH,9
     LEA DX, TB1
     INT 21H 
     
     LEA DX, ENDL
     INT 21H
     
     MOV AH,2
     MOV DL, BL
     DEC DL
     MOV CX, 5
     
     LAP1:         
     DEC DL
     LOOP LAP1 
     
     MOV CX, 5
     LAP2:
     INC DL 
     INT 21H 
     LOOP LAP2  
     
     MOV AH,9
     LEA DX, ENDL
     INT 21H
     
     MOV AH,9
     LEA DX, TB2
     INT 21H   
     
     MOV AH,9
     LEA DX, ENDL
     INT 21H
     
     MOV AH,2
     MOV DL, BL
     
     
     MOV CX, 5
     LAP3:
     INC DL
     INT 21H
     LOOP LAP3 
     
     
     
     
     
     
MAIN ENDP
END MAIN