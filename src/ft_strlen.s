;section .text
;	global ft_strlen
;
;ft_strlen:
;	mov	rax, 0
;	test rdi, rdi
;	jz exit
;	mov r9, rdi
;	
;ft_strlen_loop:
;	cmp byte[r9 + rax], 0
;	je exit
;	inc rax
;	jmp ft_strlen_loop
;
;exit:
;	ret


section .text
	global ft_strlen

ft_strlen:
	mov rax, 0		;Return value to zero
	test rdi, rdi	;Check if pointer is zero
	jz return		;^
	mov r9, rdi		;Save str pointer
	mov al, 0		;Value for scasb to compare with
	cld				;Clear Direction flag
	mov ecx, -1		;Overflow (?) to set ecx to max value
					;ecx contain second counter for scasb
	repne scasb		;While ([rdi] != al && ecx > 0) {rdi++; ecx--}
	dec rdi			;Decrement to position of last symbol, at 0 atm
	sub rdi, r9		;(0 position) - (Start of a line)
	mov rax, rdi	;Set return value

return:
	ret
