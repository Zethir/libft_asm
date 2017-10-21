global _ft_toupper

_ft_toupper:
	cmp	rdi, 0x61
	jb	not_lower
	cmp rdi, 0x7a
	jg	not_lower
	sub rdi, 0x20 

not_lower:
	mov rax, rdi
	ret
