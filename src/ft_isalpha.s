section .text
	global ft_isalpha

ft_isalpha:
	mov r9, rdi				
	cmp r9, 'A'
	jl _ret_failure
	cmp r9, 'z'
	jg _ret_failure
	cmp r9, 'Z'
	jle _ret_success
	cmp r9, 'a'
	jge _ret_success
	jmp _ret_failure


_ret_success:
	mov rax, 1
	ret

_ret_failure:
	mov	rax, 0
	ret
