      .MODEL SMALL
      .STACK 100H
      .DATA
      NHAP1 DB 13,10, "NHAP S HOAC s CHAO BUOI SANG$"
      NHAP2 DB 13,10, "NHAP C HOAC c CHAO BUOI CHIEU$"
      NHAP3 DB 13,10, "NHAP T HOAC t CHAO BUOI TOI$" 
      NHAP4 DB 13,10, "$"
      S DB 13,10, "CHAO BUOI SANG$"
      C DB 13,10, "CHAO BUOI CHIEU$"
      T DB 13,10, "CHAO BUOI TOI$" 
      .CODE
      MAIN PROC 
        MOV AX, @DATA 
        MOV DS, AX
        
        
        
        LOOP1: 
        MOV AH,9
        LEA DX, NHAP1
        INT 21h 
        LEA DX, NHAP2
        INT 21h
        LEA DX, NHAP3
        INT 21h 
        LEA DX, NHAP4
        INT 21h
        MOV AH,1
        INT 21h
        CMP AL, 'S' 
        JE CBS
        CMP AL, 's'
        JE CBS
        CMP AL, 'C'
        JE CBC
        CMP AL, 'c'
        JE CBC
        CMP AL, 'T'
        JE CBT
        CMP AL, 't'
        JE CBT
        LOOPNE LOOP1
        CBS: 
            LEA DX, S
            JMP XUAT
        CBC:
            LEA DX, C
            JMP XUAT
        CBT:
            LEA DX,T
        XUAT:
            MOV AH,9
            INT 21H  
 
      MAIN ENDP
      END MAIN
      