global _ft_strcpy

section .text
	_ft_strcpy:
		mov rbx, rdi

	_ft_loop:
		mov		cl, [rsi]
		mov		[rbx], cl
		cmp		cl, 0
		je		_exit
		inc		rsi
		inc		rbx
		jmp		_ft_loop

	_exit:
		mov		rax, rdi
		ret