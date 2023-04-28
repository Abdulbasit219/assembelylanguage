.model small
.stack 100h
.data
	msg1 db 10,09,"This is the value of al After swapping: $"
	msg2 db 10,09,"This is the value of bl After swapping: $"
.code

	start:
	
	mov ax,@data
	mov ds,ax
	
	mov al,49 ;49=1
	mov bl,50 ;50=2 
	
	xchg al,bl
	
	mov ah,09
	mov dx,offset msg1
	int 21h
	mov ah,02
	mov dl,al
	int 21h
	
	mov ah,09
	mov dx,offset msg2
	int 21h
	mov ah,02
	mov dl,bl
	int 21h
	
	mov ah,4ch
	int 21h
	
	end start