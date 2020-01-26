section .text
	global ft_strlen

ft_strlen:
	mov	rax, 0
	test rdi, rdi
	jz exit
	mov r9, rdi
	
ft_strlen_loop:
	cmp byte[r9 + rax], 0
	je exit
	inc rax
	jmp ft_strlen_loop

exit:
	ret
