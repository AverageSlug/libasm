extern _malloc
extern _ft_strlen
extern _ft_strcpy
global _ft_strdup

section .text
	_ft_strdup:
		mov		rsi, rdi
		push	rsi
		call	_ft_strlen
		mov		rdi, rax
		call	_malloc
		cmp		rax, 0
		je		_exit
		mov		rdi, rax
		pop		rsi
		call	_ft_strcpy
		ret

	_exit:
		pop		rsi
		ret