.model small
.stack 100h
.data 
msg DB 'MY Name is Esha$' 
msf DB 'Shahzad$' 
                                         
.code
main Proc 
   mov ax,@data
   mov ds,ax
   mov dl,msg
   mov dx,offset msg
   mov ah,9
   int 21h 
    mov dl,10
   mov ah,02
   int 21h 
   mov dl,13
   mov ah,02
   int 21h 
    mov dl,msf
   mov dx,offset msf
   mov ah,9
   int 21h
   
   mov ah,4ch
   int 21h 
   main endp
end main
    
    

