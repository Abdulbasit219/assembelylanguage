.model small
.stack 100h
.data
	print equ 02
.code

	start:
	
		mov ah,print
		mov dl,'A'
		int 21h
		
		mov ah,4ch
		int 21h
		
	End Start