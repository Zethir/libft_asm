section .text
global _ft_strcat
extern _ft_strlen

_ft_strcat:
	push rdi
	push rsi
	call _ft_strlen
	add	rdi, rax
	mov	r9, rdi
	pop	rdi
	push rdi
	call _ft_strlen
	mov	rcx, rax
	mov	rdi, r9
	cld
	rep	movsb
	mov	rdi, 0
	pop	rsi
	pop	rax
	ret
