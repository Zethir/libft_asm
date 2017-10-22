global _ft_memcpy

_ft_memcpy:
	mov rcx, rdx
	cld
	rep movsb
	ret
