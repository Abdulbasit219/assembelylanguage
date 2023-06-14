.Model SMall
.Stack 100h
.data
.code
	Start:
	
	Mov al,2
	Mov bl,3
	AND al,bl
	
	Add al,48
	
	Mov ah,02
	Mov dl,bl
	int 21h
	
	Mov ah,4ch
	int 21h
	
	End Start