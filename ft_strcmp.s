global _ft_strcmp

section .text
	_ft_strcmp:
		mov		cl, [rdi]
		mov		dl, [rsi]
		cmp		cl, 0
		je		_exit
		cmp		dl, 0
		je		_exit
		inc		rdi
		inc		rsi
		cmp		cl, dl
		je		_ft_strcmp
		jmp		_exit

	_exit:
		movzx	rax, cl
		movzx	rbx, dl
		sub		rax, rbx
		ret