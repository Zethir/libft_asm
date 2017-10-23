section .text
	global _ft_strchr
	extern _ft_strlen

_ft_strchr:
	cmp rsi, 0
	je	is_null
	call _ft_strlen
	mov rcx, rax
	mov rax, rsi
	cld
	repne scasb
	jz	found
	mov rax, 0
	ret

found:
	mov rax, rdi
	dec rax
	ret

is_null:
	call _ft_strlen
	add rax, rdi
	ret
