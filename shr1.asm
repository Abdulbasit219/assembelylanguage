.Model SMall
.Stack 100h
.data
.code
	Start:
	
	Mov al,4

	shr al,2 ;shl al,bl
	
	Add al,48
	
	Mov ah,02
	Mov dl,al
	int 21h
	
	Mov ah,4ch
	int 21h
	
	End Start