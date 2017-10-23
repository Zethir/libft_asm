section .text
	global _ft_putstr
	extern _ft_strlen

_ft_putstr:
	cmp	rdi, 0x0
	je	return
	mov rsi, rdi
	call _ft_strlen
	mov rdx, rax
	mov rdi, 0x1
	mov rax, 0x2000004
	syscall

return:
	ret
