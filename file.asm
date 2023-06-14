.model small
.stack 100h
.data
fname db 'yys.txt',0
address dw ?
 
.code 
   topg:
   
	mov ax,@data 
	mov ds,ax
   
	mov ah,3ch
	lea dx,fname
	mov cl,0
	int 21h
	
	mov address,ax
	
	mov ah,3eh
	lea dx,address
	int 21h
	
	mov ah,4ch
	int 21h
	
	end topg 
	
	
   