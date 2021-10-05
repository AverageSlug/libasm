global _ft_strlen

section .text
	_ft_strlen:
		mov		rax, -1

	_ft_loop:
		mov		cl, [rdi]
		inc		rdi
		inc		rax
		cmp		cl, 0
		jne		_ft_loop
		ret