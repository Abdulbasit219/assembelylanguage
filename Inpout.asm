.model small
.stack 100h
.data
		newline db 10,13,"$"
.code

	; write a program to take 5 element in input and print all user input
	
	start:
		
	; 01 is used for input to take 1 element
	
	mov ax,@data
	mov ds,ax
	
	mov ah,01
	int 21h
	mov bl,al
	
	mov ah,01
	int 21h
	mov bh,al
	
	mov ah,01
	int 21h
	mov cl,al
	
	mov ah,01
	int 21h
	mov ch,al
	
	; dl register is used for output
	
	mov ah,01
	int 21h
	mov dh,al
	
	
	
	mov ah,02
	mov dl,newline
	int 21h
	
	; 02 is used for print
	
	mov ah,02
	mov dl,bl
	int 21h
	
	mov ah,02
	mov dl,bh
	int 21h
	
	mov ah,02
	mov dl,cl
	int 21h
	
	mov ah,02
	mov dl,ch
	int 21h
	
	mov ah,02
	mov dl,dh
	int 21h
	
	mov ah,4ch
	int 21h
	
	End start