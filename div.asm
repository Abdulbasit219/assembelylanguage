.model small
.stack 100h
.data
	qoutient db "Qoutient = $"
	remainder db 10,13,"Remainder = $"
.code
	start:
	
	mov ax,@data
	mov ds,ax
	
	mov ax,26
	mov bl,5
	
	Div bl
	
	mov cl,al
	mov ch,ah
	
	mov ah,09
	lea dx,qoutient
	int 21h
	mov ah,02
	mov dl,cl
	add dl,48
	int 21h
	
	mov ah,09
	lea dx,remainder
	int 21h
	mov ah,02
	mov dl,ch
	add dl,48
	int 21h
	
	mov ah,4ch
	int 21h
	
	end start