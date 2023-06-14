.Model Small
.Stack 100h
.Data
.Code
  Start:
    main proc
	mov ax,6
	int 10h
	mov ah,0ch ;text to graphic
	mov al,1   ;1 white 0 balck	
	mov cx,200 ;cx = row x
	mov dx,70 ;dx = col y axis
	li:
	int 10h
	inc cx
	cmp cx,400
	jle li 
	mov ah,0ch
	mov al,1
	mov cx,200
	mov dx,140
	l1:
	int 10h
	inc cx
	cmp cx,400
	jle l1
	mov ah,0ch
	mov al,1
	mov cx,400
	mov dx,70
	l2:
	int 10h
	inc dx
	cmp dx,140
	jle l2
	mov ah,0ch
	mov al,1
	mov cx,200
	mov dx,70
	l3:
	int 10h
	inc dx
	cmp dx,140
	jle l3
	
	mov ah,0
	int 16h
	mov ah,4ch
	int 21h
	main endp
	end
	