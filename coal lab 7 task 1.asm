; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
msg db 'The square of the number is: $'
result db 0

.code
main proc
   
    mov ah, 01h
    int 21h

  
    sub al, 48
    mov bl, al 

    
    mov al, bl 
    mul bl     

 
    mov result, al

   
    mov ah, 09h
    lea dx, msg
    int 21h

  
    mov dl, result
    add dl, 48  
    mov ah, 02h
    int 21h

    ; Exit program
    mov ax, 4C00h
    int 21h
main endp
end main

