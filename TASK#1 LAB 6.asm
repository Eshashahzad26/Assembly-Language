.model small 
.stack 100h
.data          
msg db ' Name: Esha Shahzad$'        
mgf db 'Address:Gulberg green block f$' 
tx db 'Experience:done internship as an software engineer$' 
sx db  'Contact:00222233344$' 
gx db 'Email:esha@gmail.com$' 
.code

main proc
    mov ax, @data     
    mov ds, ax 

   
    mov dx, offset msg x
    mov ah, 9          
    int 21h           

  
    mov dl, 10        
    mov ah, 2          
    int 21h           
    
    mov dl, 13         
    int 21h           

   
    mov dx, offset mgf 
    mov ah, 9          
    int 21h           
             
    mov dl, 10        
    mov ah, 2          
    int 21h           
    
    mov dl, 13         
    int 21h   
             
    mov dx, offset tx 
    mov ah, 9          
    int 21h
       
     mov dl, 10        
    mov ah, 2          
    int 21h           
    
    mov dl, 13         
    int 21h   
             
    mov dx, offset sx 
    mov ah, 9          
    int 21h
    
     mov dl, 10        
    mov ah, 2          
    int 21h           
    
    mov dl, 13         
    int 21h   
             
    mov dx, offset gx 
    mov ah, 9          
    int 21h  
    mov ah, 4ch        
    int 21h            
main endp
end main