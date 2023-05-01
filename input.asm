	; programe to get user input through data variable

.model small
.stack 100h
.data
	a db ?
	b db ?
.code

	start:
	
	; for input
	mov ah,01
	int 21h
	mov a,al
	
	mov ah,01
	int 21h
	mov b,al
	
	; For new line feed
	mov ah,02
	mov dl,10
	int 21h
	
	mov ah,02
	mov dl,13
	int 21h
	
	; for output print
	mov ah,02
	mov dl,a
	int 21h
	
	mov ah,02
	mov dl,b
	int 21h
	
	; for exit
	mov ah,4ch
	int 21h
	
	
	end start