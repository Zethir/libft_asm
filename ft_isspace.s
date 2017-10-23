global _ft_isspace

_ft_isspace:
	cmp rdi, 0x9
	jb	is_not_space
	cmp rdi, 0xd
	jg	space
	jmp is_space

space:
	cmp rdi, 0x20
	jne	is_not_space 
	jmp is_space

is_not_space:
	mov rax, 0x0
	ret

is_space:
	mov rax, 0x1
	ret
