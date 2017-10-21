global _ft_isdigit

_ft_isdigit:
	cmp	rdi, 0x30
	jb	not_digit
	cmp rdi, 0x39
	jg	not_digit
	jmp is_digit

not_digit:
	xor rax, rax
	ret

is_digit:
	mov rax, 0x1
	ret
