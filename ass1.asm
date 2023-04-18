.model small
.stack 100h
.data
.code

	start:
	
		mov ah,02
		mov dl,'s'
		int 21h
		
		mov ah,4ch
		int 21h
		
	End Start