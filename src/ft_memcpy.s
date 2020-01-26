
; https://www.intel.com/content/dam/www/public/us/en/documents/manuals/64-ia-32-architectures-software-developer-instruction-set-reference-manual-325383.pdf 
; page 1201

section .text
	global ft_memcpy

ft_memcpy:
	push rbp
	mov rbp, rsp

	mov	rax, rdi	; Placing letter to correct register
	mov	rcx, rdx	; Placing counter to correct register	

	rep	movsb		; Move rcx bytes from rse to rdi
	;mov rax, rdi	; Move ptr to return register
	leave
	ret
