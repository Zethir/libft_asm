global _ft_memset

_ft_memset:
	mov rax, rsi
	mov rcx, rdx
	cld
	rep stosb
	ret
