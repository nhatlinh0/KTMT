.model small
.stack 100h
.data   
 tb1 db "Hello, world !$"                  
 tb2 db 13,10, "Hello, solar system !$"  
 tb3 db 13,10, "Hello, universe !$"
.code
main proc 
    mov ax, @data
    mov ds, ax
                           
    mov ah, 9  
    lea dx, tb1
    int 21h  
    
    mov ah, 9
    lea dx, tb2
    int 21h
               
    mov ah, 9
    lea dx, tb3
    int 21h
    
    mov ah, 4ch
    int 21h  
main endp       
end main
