.model small
.stack 100h
.data
	string1 db "Hello$"
	string2 db 5 dup('0$')
.code

	start:
	
	mov ax,@data
	mov ds,ax
	mov es,ax
	
	lea SI,string1+4
	lea DI,string2
	
	STD
	
	mov cx,5
	
	label1:
	
	movSB
	add DI,2
	
	loop label1 
	
	mov dx,offset string2
	mov ah,09
	int 21h
	
	mov ah,4ch
	int 21h
	
	end start