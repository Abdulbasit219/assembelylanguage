.model small
.stack 100h
.data
corr   db 10,13,"You Are a Human$"
incorr db 10,13,"You Are a robot$"
print  db 10,13, "Welcome In Blood Bank:$"
p1     db 10,13, "Press 1 for Blood Group A:$"
p2     db 10,13, "Press 2 for Blood Group A-:$"
p3     db 10,13, "Press 3 for Blood Group B:$"
p4     db 10,13, "Press 4 for Blood Group B-:$"
p5     db 10,13, "Press 5 for Blood Group O:$"
.code
	start:

	mov ax, @data
	mov ds,ax

	mov ah,09
	mov dx,offset print
	int 21h

	mov ah,09
	mov dx,offset p1
	int 21h

	mov ah,09
	mov dx,offset p2
	int 21h

	mov ah,09
	mov dx,offset p3
	int 21h

	mov ah,09
	mov dx,offset p4
	int 21h

	mov ah,09
	mov dx,offset p5
	int 21h


mov ah,01
int 21h
           
cmp al,49
je  equal 

cmp al,50
je  equal

cmp al,51
je  equal

cmp al,52
je equal

cmp al,53
je equal

mov dx , offset incorr
jmp display1

equal:
mov dx, offset corr
jmp display1

display1:
mov ah, 09
int 21h
jmp exit
exit: 

mov ah ,4ch
int 21h

end start