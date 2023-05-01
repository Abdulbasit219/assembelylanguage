.model small
.stack 100h
.data
.code
	start:
	
	mov al,10
	mov bl,2
	
	mul bl		;answer automatic save in ax
	AAM			;Aascii Adjust After Multiplication
	mov ch,ah	;ax=ah+al
	mov cl,al
	
	mov ah,02
	mov dl,ch
	add dl,48
	int 21h
	
	mov ah,02
	mov dl,cl
	add dl,48
	int 21h
	
	mov ah,4ch
	int 21h
	
	end start
	