section .text
	global ft_strlen

ft_strlen:
	mov rax, 0

.loop:
	mov bl, [rdi + rax]
	cmp bl, 0
	je .end
	inc rax
	jmp .loop

.end:
	ret