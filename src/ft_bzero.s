section .text
	global ft_bzero

ft_bzero:
	mov r9, rdi 			;Saving arg #1 - void*
	mov r10, rsi			;Saving arg #2 - size_t
	mov r11, 0				;Setting counter to 0

bzero_loop:
	cmp r10, -1				;while (i > 0)
	je exit					; ^
	mov byte[r9 + r10], 0	;Setting ptr + n to 0
	dec r10 				;i--
	jmp bzero_loop

exit:
	ret
