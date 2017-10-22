section .data
	new_line: db `\n`
	null_msg: db "(null)"

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	cmp rdi, 0x0 ; if first is null jump to null label
	je	null

print:
	mov rsi, rdi ; move first param into rsi
	call _ft_strlen ; fill rax with the length of rdi
	mov rdx, rax ; put length of string into rdx
	mov rdi, 0x1 ; STDOUT
	mov rax, 0x2000004 ; call syscall write
	syscall
	jc error ; check if syscall return error
	js error

nl:
	lea rsi, [rel new_line] ; put '\n' in rsi
	mov rdx, 0x1 ; length == 1
	mov rax, 0x2000004
	syscall
	jc error
	js error
	jmp return_value ; jump to return_value label

error:
	mov rax, -1 ; return -1
	ret

null:
	lea rdi, [rel null_msg] ; put null_msg into rdi
	jmp print ; jump to print label
	
return_value:
	mov rax, 10 ; return 10
	ret
