section .bss
	buffer:	resb	64 

section .text
	global _ft_cat

_ft_cat:
	lea rsi, [rel buffer]
	mov rdx, 64
	mov rax, 0x2000003
	syscall
	jc return
	js return
	cmp rax, 0
	jle return
	push rdi
	mov rdx, rax
	mov rdi, 0x1
	mov rax, 0x2000004
	syscall
	pop rdi
	jmp _ft_cat

return:
	mov rax, 0
	ret
