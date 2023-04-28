		; Write a programme to subtract two number
		
.model small 
.stack 100h
.data
.code
	start:
	
	; 1st input
	mov ah,01
	int 21h
	mov bl,al
	
	; Line feed
	mov ah,02
	mov dl,10
	int 21h
	
	; 2nd input
	mov ah,01
	int 21h
	
	; subtract logic
	sub bl,al
	add bl,48
	
	; line feed
	mov ah,02
	mov dl,10
	int 21h
	
	; Answer print
	mov ah,02
	mov dl,bl
	int 21h
	
	mov ah,4ch
	int 21h
	
	end start