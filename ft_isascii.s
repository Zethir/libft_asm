global _ft_isascii

_ft_isascii:
	cmp	rdi, 0x00
	jb	not_ascii
	cmp rdi, 0x7f
	jg	not_ascii
	jmp is_ascii

not_ascii:
	xor rax, rax
	ret

is_ascii:
	mov rax, 0x1
	ret
