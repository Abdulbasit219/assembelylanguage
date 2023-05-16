.Model Small
.Stack 100h
.data
.code
	
	Start:
	
	Mov ah,01
	
	l1:
	int 21h
	cmp al,13
	jne l1
	
	mov ah, 4ch
	int 21h
	
	end start
	
	