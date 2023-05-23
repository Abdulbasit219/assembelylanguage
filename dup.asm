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
	
	lea SI,string1
	lea DI,string2
	
	CLD
	
	mov cx,5
	
	label1:
	MovSB
	loop label1 
	
	mov ah,09
	mov dx,offset string2
	int 21h
	
	mov ah,4ch
	int 21h

end start