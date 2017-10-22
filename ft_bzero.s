global _ft_bzero

_ft_bzero:
	mov rax, 0 ; put rax to 0
	mov rcx, rsi ; mov length into rcx
	cld
	rep stosb ; loop on rdi (rdi++) while rcx != 0 and put rax in rdi (byte by byte)
	ret
