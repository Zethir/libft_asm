section .data
	new_line: db `\n`
	null_msg: db "(null)"

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	cmp rdi, 0x0
	je	null

print:
	mov rsi, rdi
	call _ft_strlen
	mov rdx, rax
	mov rdi, 0x1	
	mov rax, 0x2000004
	syscall
	jc error
	js error

nl:
	lea rsi, [rel new_line]
	mov rdx, 0x1
	mov rax, 0x2000004
	syscall
	jc error
	js error
	jmp return_value

error:
	mov rax, -1
	ret

null:
	lea rdi, [rel null_msg]
	jmp print
	
return_value:
	mov rax, 10
	ret
