.model small
.stack 100h
.data 
	msg1 db 10,"Enter alphabet in small letter: $"
	msg2 db 10,"Enter alphabet in capital letter: $"
	msg3 db 10,"This is the letter after conversion: $"
.code

	start:
	
	mov ax,@data								
	mov ds,ax
	
	mov ah,09
	lea dx,msg2
	int 21h
	
	mov ah,01
	int 21h
	
	add al,20h
	
	mov ah,02
	mov dl,al
	int 21h
	
	mov ah,09
	lea dx,msg1
	int 21h
	
	mov ah,01
	int 21h
	
	sub al,20h
	
	mov ah,09
	lea dx,msg3
	int 21h
	
	mov ah,02
	mov dl,al
	int 21h
	
	mov ah,4ch
	int 21h
	
	end start