section .text
	global _ft_strcpy
	extern _ft_strlen

_ft_strcpy:
	push rdi
	push rsi
	mov rdi, rsi
	call _ft_strlen
	mov rcx, rax
	pop rsi
	pop rdi
	mov rax, rdi
	cld
	rep movsb
	ret
