.model small
.stack 100h
.data
	var1 db "This is value of al :$"
	var2 db 10,13, "This is value of bl :$"
.code
	
	start:
	mov ax,@data
	mov ds,ax

	
	mov al,49	;49=1 
	mov bl,50	;50=2
	
	xchg al,bl
	
	mov ah,09
	lea dx, var1
	int 21h
	
	
	mov ah,02
	mov dl,bl	;bl=1
	int 21h
	
	
	mov ah,02
	mov dl,al	;al=1
	int 21h
	
	mov ah,09
	lea dx,var2
	int 21h
	
	
	
	
	mov ah,4ch
	int 21h
	
	
	end start