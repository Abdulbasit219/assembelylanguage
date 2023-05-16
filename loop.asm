.model small
.stack 100h
.data
.code

	start:
	
	; unconditional
	
	mov cx,10 ;repeat 10 times cx-1 , terminate cx=0 
	
	mov ah,02
	mov dl,"Z"
	
	label1:
	
	; int 21h
	; inc dl
	
	; int 21h
	; dec dl
	
	 
	loop label1
	
	mov ah,4ch
	int 21h 
	
	end start