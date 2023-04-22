.model small
.stack 100h
.data
		var db "SMIU$"
.code
	
	start:
	
	mov ax,@data
	mov ds,ax
	
	mov ah,09
	mov dx,offset var
	int 21h
	
	mov ah,4ch
	int 21h
	
	end start