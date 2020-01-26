extern ft_strlen

section .text
	global ft_strcat

ft_strcat:
	mov 	r8, rdi						;Saving dest
	mov 	r9, rsi						;Saving src
	call	ft_strlen					;Strlen of dest
	mov		r10, rax					;Saving strlen of dest
	mov		rdi, rsi					;Putting src to rdi
	call	ft_strlen					;Strlen of src
	mov		r11, rax					;Saving strlen of src
	mov		rax, r9						;Moving dest to return register
	add		r8, r10						;Setting r8 to the end of dest
	mov		rdx, 0						;Counter to zero
	
ft_strcat_loop:
	cmp		rdx, r11					;Return condition
	je		return
	mov		al, byte[r9 + rdx]			;Saving charater to copy
	mov		byte[r8 + rdx], al			;Copying character
	inc		rdx							
	jmp		ft_strcat_loop

return:
	mov		byte[r8 + r11], 0
	ret
