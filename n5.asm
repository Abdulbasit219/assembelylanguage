.model small
.stack 100h
.data
string1 db "hellow$"
string2 db "yellow$"
m db "equal$"
n db "not equal$"
.code
start:
mov ax,@data
mov ds, ax
mov es, ax
lea SI,string1
lea DI,string2
cld
cmpsb
jz equal 
jmp notequal
equal:
mov ah,09
lea dx,m
int 21h
jmp exit
notequal:
mov ah,09
lea dx,n
int 21h
jmp exit 
exit:
mov ah,4ch
int 21h
end start