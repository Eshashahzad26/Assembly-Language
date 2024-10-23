; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data                         
msg db 'Enter  the number: $'
 msg1 db 'cube of number entered: $'
.code
main proc
     mov ax,@data
     mov ds,ax
     mov dl,ax
     mov dx,offset msg
     mov ah,9
    int 21h 
    mov ah,1
    int 21h 
    mov bl, al 
    sub bl,48
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
     mov ax,@data
     mov ds,ax 
     ov d1,msg1
     mov dx,offset msg1
     mov ah,9
    int 21h 
    mov al, bl 
    mul bl 
    mul bl 
    AAM
    mov ch,ah
    mov cl,al
    mov dl,ch
    add dl,48  
    mov ah,2
    int 21h
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h
    mov ah, 4ch
    int 21h
main endp
end main

