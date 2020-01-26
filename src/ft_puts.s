extern ft_strlen

STDOUT equ	1
WRITE equ	1

section .data
	newline db 10

section .text
	global ft_puts

ft_puts:
	cmp	rdi, 0
	je return
	mov	rsi, rdi	;Saving str
	call ft_strlen	;Getting len on st
	mov rdx, rax	;Saving strlen
	mov rax, STDOUT
	mov rdi, WRITE
	syscall

	mov rax, STDOUT
	mov rdi, WRITE
	mov rsi, newline
	mov rdx, 1 
	syscall

return:
	ret

