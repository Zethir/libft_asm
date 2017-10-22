global _ft_tolower

_ft_tolower:
	cmp	rdi, 0x41
	jb	return_value; check if cmp is below 'A' and jump to return_value if it is
	cmp rdi, 0x5a
	jg	return_value ; check if cmp is above 'Z' and jump to return_value if it is 
	add rdi, 0x20 ; add 32 to rdi to make it lowercase

return_value:
	mov rax, rdi ; mov rdi, change or unchanged, to rax and return it
	ret
