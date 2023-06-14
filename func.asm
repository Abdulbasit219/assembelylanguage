.Model small
.Stack 100h
.data
.code
	
	Start:
	
	Mov al,50
	Mov bl,51
	
	call blue
	call display1
	
	Mov ah,4ch
	int 21h
		
	blue proc
	
	Mov al,51
	Mov bl,50
	
	ret
	Endp blue
	
	display1 proc
	
	Mov ah,02
	mov dl,al
	int 21h
	
	ret
	
	endp display1
	
	End Start
