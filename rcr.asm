.Model SMall
.Stack 100h
.data
.code
	Start:
	
	Mov al,2

	rcr al,1
	
	Add al,48
	
	Mov ah,02
	Mov dl,al
	int 21h
	
	Mov ah,4ch
	int 21h
	
	End Start