.model small
.stack 100h
.data
	string1 db "Hello$"
.code

	start:
	
	mov ax,@data
	mov ds,ax
	mov es,ax
	
	lea DI,string1
	mov al,'y'
	mov bl,'A'
	
	CLD
	STOSB
	
	mov ah,09
	lea dx,string1
	int 21h
	
	mov ah,4ch
	int 21h 
	
	end start