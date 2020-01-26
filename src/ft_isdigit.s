section .text
	global ft_isdigit

ft_isdigit:
	mov r9, rdi
	cmp r9, '0'
	jl 	_ret_failure
	cmp r9, '9'
	jg 	_ret_failure
	jmp	_ret_success

_ret_failure:
	mov rax, 0
	ret

_ret_success:
	mov rax, 1
	ret

