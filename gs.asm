.model small
.stack 100h
.data
.code
start:
;set graphic mode
Mov ax,6
int 10h		; int 10h used for screen manipulation 
;draw line
 Mov ah,0ch
 Mov al,1 ;color num (1-15)
 Mov cx,100 ;col
 mov dx,100	;row

 L1: 
 int 10h
 inc cx
 cmp cx,400
 jle l1

; read keyboard 
Mov ah,0
int 16h			; int 16h will communicate with keyboard
; set text mode
Mov ax,3
int 10h
;return dos 
Mov ah,4ch
int 21h

end start
