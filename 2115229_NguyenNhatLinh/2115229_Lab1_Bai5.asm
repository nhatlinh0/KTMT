.model small
.stack 100h
.data
tb1 db "Nhap ky tu thu nhat: $"
tb2 db 13,10, "Nhap ky tu thu hai: $"
tb3 db 13,10, "Ky tu tong: $"
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
    
    mov ah, 1
    int 21h
    mov ch, al    
    
    mov ah, 9 
    lea dx, tb3
    int 21h 
    
    mov ah, 2
    add bl, ch
    mov dl, bl
    int 21h
      
    mov ah, 4ch
    int 21h
          
          
main endp
end main