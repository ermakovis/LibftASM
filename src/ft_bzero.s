section .text
	global ft_bzero

ft_bzero:
	cmp rdi, 0
	je exit
	mov rbx, rdi
	mov rax, rsi

bzero_loop:
	cmp rax, 0
	je exit
	mov byte[rbx], 0
	inc rbx
	dec rax
	jmp bzero_loop

exit:
	ret
