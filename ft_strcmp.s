global _ft_strcmp

_ft_strcmp:
	mov r8, 0
	mov r9, 0
	mov rcx, 0

loop:
	mov r8b, [rdi + rcx]
	mov r9b, [rsi + rcx]
	test r8, r8
	jz return_value
	test r9, r9
	jz return_value
	inc rcx
	cmp r8, r9
	jne	return_value
	jmp loop

return_value:
	mov rax, r8
	sub rax, r9
	ret
