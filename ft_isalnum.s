global _ft_isalnum

_ft_isalnum:
	cmp	rdi, 0x30
	jb	not_isalnum
	cmp rdi, 0x39
	jg 	is_maj
	jmp is_isalnum

is_maj:
	cmp	rdi, 0x41
	jb	not_isalnum
	cmp	rdi, 0x5a
	jg	is_min
	jmp	is_isalnum

is_min:
	cmp	rdi, 0x61
	jb	not_isalnum
	cmp	rdi, 0x7a
	jg	not_isalnum
	jmp	is_isalnum

not_isalnum:
	xor rax, rax
	ret

is_isalnum:
	mov rax, 0x1
	ret
