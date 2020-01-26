extern ft_isalpha
extern ft_isdigit

section .text
	global ft_isalnum

ft_isalnum:
	call 	ft_isalpha
	mov		r10, rax
	call	ft_isdigit
	mov 	r11, rax
	cmp 	r10, 1
	je 		ret_success
	cmp 	r11, 1
	je 		ret_success
	jmp 	ret_failure

ret_failure:
	mov rax, 0
	ret
	
ret_success:
	mov rax, 1
	ret
