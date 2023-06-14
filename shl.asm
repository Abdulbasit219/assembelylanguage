.model small
.stack 100h
.data
.code

start:
	
	; SHL 

     mov al,2
     mov cl,1        ; Number of bits to shift
    
	; shl destination,count 2^n value of destination = 2 so 2*2^1=4 
	 shl 	al, 		cl        ; Shift AL left by cL bits
	 div al,50	
	 add al,48 			; Display result in Ascii 
	
	 mov ah,02
	 mov dl,al
	 int 21h



	; SAL
	; mov al,2
	; mov cl,1
	
	; sal al,cl
	
	
	; mov ah,02
	; mov dl,al
	; add dl,48
	; int 21h
	
    mov ah, 4Ch       ; Exit program
    int 21h

end start