.model small
.stack 100h
.data     
tb1 db "Hay nhap 1 ky tu: $"
tb2 db 13,10, "Ky tu dung truoc: $"
tb3 db ", da nhap: $"
tb4 db ", dung sau: $"
.code 
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, tb1
    int 21h
    
    mov ah, 1
    int 21h 
    mov bl, al
    
    mov ah, 9
    lea dx, tb2
    int 21h  
                            
    mov ah, 2
    sub bl, 1  
    mov dl, bl
    int 21h
    
    mov ah, 9
    lea dx, tb3
    int 21h  
    
    mov ah, 2 
    add bl, 1
    mov dl, bl
    int 21h
          
    mov ah, 9 
    lea dx, tb4
    int 21h
    
    mov ah, 2
    add bl, 1
    mov dl, bl
    int 21h
    
    mov ah, 4ch
    int 21h
    
main endp
end main