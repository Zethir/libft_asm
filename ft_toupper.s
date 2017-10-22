global _ft_toupper

_ft_toupper:
	cmp	rdi, 0x61 
	jb	return_value ; check if cmp is below 'a' and jump to return_value if it is
	cmp rdi, 0x7a
	jg	return_value ; check if cmp is above 'z' and jump to return_value if it is
	sub rdi, 0x20 ; substract  32 to rdi to make it uppercase

return_value:
	mov rax, rdi ; mov rdi, change or unchanged, to rax and return it
	ret
