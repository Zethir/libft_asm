global _ft_tolower

_ft_tolower:
	cmp	rdi, 0x41
	jb	not_upper
	cmp rdi, 0x5a
	jg	not_upper
	add rdi, 0x20 

not_upper:
	mov rax, rdi
	ret
