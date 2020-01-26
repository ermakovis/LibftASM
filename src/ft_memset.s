; https://www.intel.com/content/dam/www/public/us/en/documents/manuals/64-ia-32-architectures-software-developer-instruction-set-reference-manual-325383.pdf 
; page 1201

section .text
	global ft_memset

ft_memset:
	push rbp
	mov rbp, rsp
	mov	rcx, rdx	; Placing counter to correct register	
	mov	al, sil		; Placing letter to correct register

	rep	stosb		; Fill rcx bytes at rdi with al
;	mov rax, rdi	; Move ptr to return register
	leave
	ret

