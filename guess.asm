.model small
.stack 100h
.data
	var db 10,13,"correct guess$"
	var1 db 10,13,"Incorrect guess$"
.code

	start:
	mov ax,@data
	mov ds,ax
	
	mov ah,01
	int 21h
	
	cmp al,49
	je equal
	
	cmp al,51
	je equal
	
	cmp al,57
	je equal
	
	lea dx,var1
	jmp display1
	
	equal:
	lea dx,var
	jmp display1
	
	display1:
	mov ah,09
	int 21h
	jmp exit
	exit:
	
	mov ah,4ch
	int 21h
	
	end start