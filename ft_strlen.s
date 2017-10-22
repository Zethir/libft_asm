global _ft_strlen

_ft_strlen:
	push rdi
	mov rax, 0
	mov rcx, -1 
	cld ; clear directory flag
	repne scasb ; dec rcx, inc rdi, loop = rcx != 0 && rdi != rax
	not rcx ; reverse binary, ex: 0110 = 1001
	sub rcx, 1 ; remove \0
	mov rax, rcx ; put res in ret value
	pop rdi
	ret
