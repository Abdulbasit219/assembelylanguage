.Model Small
.Stack 100h
.data
.code

	Start:
	
	Newline macro
	
	Mov ah,02
	Mov dl,10
	int 21h
	
	Endm Newline
	
	Mov ah,02
	Mov dl,'A'
	int 21h
	
	Newline
	
	Mov ah,02
	Mov dl,'B'
	int 21h
	
	Mov ah,4ch
	int 21h
	
	End Start