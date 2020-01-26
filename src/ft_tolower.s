section .text
	global ft_tolower

ft_tolower:
	mov r9, rdi
	cmp r9, 'A'
	jl 	return
	cmp r9, 'Z'
	jg 	return
	mov rax, r9
	sub	rax, 'A'
	add rax, 'a'

return:
	ret
