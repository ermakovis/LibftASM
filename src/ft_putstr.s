section .text
	global ft_putstr

ft_putstr:
	push rax
	mov rsi, rax
	mov rax, 1
	mov rdi, 1
	mov rdx, 5
	syscall
	ret

