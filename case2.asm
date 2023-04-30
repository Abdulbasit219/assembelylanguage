.model small
.stack 100h
.data
.code

start:

	mov ah,01
	int 21h
	
	;capital A in ascii table in octal = 101
	;small a in ascii table in octal = 141
	;so difference of both letter is 40 
	;same as 'B' to 'Z'
	
	add al,40q
	mov bl,al
	
	; for new line
	mov ah,02
	mov dl,10
	int 21h
	
	; for output
	mov ah,02
	mov dl,bl
	int 21h
	
	mov ah,4ch
	int 21h

end start