.model small
.stack 100h
.data
	msg1 db "Enter first number: $"
	msg2 db 10,13,"Enter second number: $"
	result db 10,13,"Sum of both number is: $"
.code
	start:
	
	mov ax,@data
	mov ds,ax
	
	mov ah,09
	lea dx,msg1
	int 21h
	mov ah,01
	int 21h
	mov bl,al
	
	mov ah,09
	lea dx,msg2
	int 21h
	mov ah,01
	int 21h
		
	mov ah,09
	lea dx,result
	int 21h
	
	add bl,al
	sub bl,48
	
	mov ah,02
	mov dl,bl
	int 21h
	
	mov ah,4ch
	int 21h
	
	end start