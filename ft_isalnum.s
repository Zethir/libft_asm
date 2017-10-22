global _ft_isalnum

_ft_isalnum:
	cmp	rdi, 0x30 ; compare 1st param with '0'
	jb	not_isalnum ; jump to not_isalnum if res is below '0'
	cmp rdi, 0x39 ; compare 1st param with '9'
	jg 	is_maj ; jump to is_maj if res is superior to '9'
	jmp is_isalnum ; jump to is_isalnum because res is num

is_maj:
	cmp	rdi, 0x41 ; 'A'
	jb	not_isalnum
	cmp	rdi, 0x5a ; 'Z'
	jg	is_min
	jmp	is_isalnum

is_min:
	cmp	rdi, 0x61 ; 'a'
	jb	not_isalnum
	cmp	rdi, 0x7a ; 'z'
	jg	not_isalnum
	jmp	is_isalnum

not_isalnum:
	xor rax, rax ; return 0
	ret

is_isalnum:
	mov rax, 0x1 ; return 1
	ret
