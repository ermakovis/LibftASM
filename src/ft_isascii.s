
section .text
	global ft_isprint

ft_isprint:
	mov r9, rdi
	cmp r9, 0
	jl 	ret_failure
	cmp r9, 127
	jg 	ret_failure
	jmp ret_success

ret_failure:
	mov rax, 0
	ret

ret_success:
	mov rax, 1
	ret
