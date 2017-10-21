global _ft_isprint

_ft_isprint:
	cmp	rdi, 0x20
	jb	not_print
	cmp rdi, 0x7e
	jg	not_print
	jmp is_print

not_print:
	xor rax, rax
	ret

is_print:
	mov rax, 0x1
	ret
