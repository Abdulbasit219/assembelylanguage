.model small
.stack 100h
.data
fname db 'yys.txt'
address	dw ?
msg db 'Ye to Abdul Bari hy$'
.code
    golo:
	
	mov ax,@data
	mov ds,ax
	
	  mov ah,3ch
   lea dx,fname
   mov cl,0
   int 21h
	
	mov ah,3dh
	lea dx,fname 
	mov al,2
	int 21h
	
	mov address,ax
		
	mov ah,40h
	mov bx,address
	mov cx,19
     lea dx,msg
	 int 21h
	 
	 mov ah,3eh
	 mov bx,address
	 int 21h 
	 
	 mov ah,4ch
	 int 21h
	 
	 end golo
	
	