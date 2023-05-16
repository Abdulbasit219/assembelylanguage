.model small
.stack 100h
.data
var db "False $"
var1 db "True$"
.code

start:
	
	mov ax,@data
	mov ds,ax
	
	mov al,49 ;50=1
	mov bl,50 ;49=2
	
	cmp al,bl
	; je equal
	; jz equal
	; jc equal
	; js equal
	jl equal 
	mov ah,09
	mov dx,offset var
	int 21h
	jmp exit 
	
	equal:
	
	mov ah,09
	mov dx,offset var1
	int 21h
	exit:
	
	mov ah,4ch
	int 21h
	
end start