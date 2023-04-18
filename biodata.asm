.model small
.stack 100h
.data
	b1 db 10,09,09,"**************BIO DATA******************$"
	line db 10,"-------------------------------------------------------------------------------$"
	n1 db 10,09,"Name: $"
	fn db 10,09,"Father name: $"
	c  db 10,09,"Cnic: $"
	s  db 10,09,"Student Id: $"
	s2 db 10,09,"Semester: $"
	s3 db 10,09,"Subject: $"
	line2 db 10,"==============================================================================$"
	p db 10,09,"Enter 4 digit Password: $"
.code

	start:
	
	mov ax,@data
	mov ds,ax
	
	mov ah,09
	lea dx,b1
	int 21h
	
	mov ah,09
	lea dx,line
	int 21h
	
	mov ah,09
	lea dx,n1
	int 21h
	mov ah,3fh
	int 21h
	
	mov ah,09
	lea dx,fn
	int 21h
	mov ah,3fh
	int 21h
	
	mov ah,09
	lea dx,c
	int 21h
	mov ah,3fh
	int 21h

	mov ah,09
	lea dx,s
	int 21h
	mov ah,3fh
	int 21h
	
	mov ah,09
	lea dx,s2
	int 21h
	mov ah,3fh
	int 21h

	mov ah,09
	lea dx,s3
	int 21h
	mov ah,3fh
	int 21h
	
	mov ah,09
	lea dx,line2
	int 21h
	
	mov ah,09
	lea dx,p
	int 21h
	
	mov ah,08
	int 21h
	int 21h
	int 21h
	int 21h
	
	mov ah,09
	lea dx,line2
	int 21h
	
	mov ah,4ch
	int 21h
	
	end start