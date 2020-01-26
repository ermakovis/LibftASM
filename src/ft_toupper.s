section .text
	global ft_toupper

ft_toupper:
	mov r9, rdi
	cmp r9, 'a'
	jl 	return
	cmp r9, 'z'
	jg 	return
	mov rax, r9
	sub	rax, 'a'
	add rax, 'A'

return:
	ret
