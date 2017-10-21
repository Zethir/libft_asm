global _ft_isalpha

_ft_isalpha:
	cmp	rdi, 0x41
	jb	not_alpha
	cmp rdi, 0x5a
	jg 	is_min
	jmp is_alpha

is_min:
	cmp	rdi, 0x61
	jb	not_alpha
	cmp	rdi, 0x7a
	jg	not_alpha
	jmp	is_alpha

not_alpha:
	xor rax, rax
	ret

is_alpha:
	mov rax, 0x1
	ret
