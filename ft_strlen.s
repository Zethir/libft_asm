global _ft_strlen

_ft_strlen:
	mov rax, 0

loop:
	cmp byte[rdi], 0
	je	return_value
	inc rax
	inc rdi
	jmp	loop

return_value:
	ret
