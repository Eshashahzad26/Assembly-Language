
.model small
.stack 100h
.data
num1 db
.code
main proc
    mov ah,01
    int 21h 
    sub al,48
    mov bl, al
    
    
    mov dl,'*'
    mov ah,02
    int 21h
    
    mov ah,01
    int 21h 
    sub al,48  
    mul bl
    
      AAM
      mov ch,ah
      mov cl,al
      mov dl,ch
      
      add dx,48
      mov ah,2
      int 21h
      mov dl,cl
      add dx,48
      mov ah,2
      int 21h
      
   
        mov ah,4ch
        int 21h
        main endp
end main