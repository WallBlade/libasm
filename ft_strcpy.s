section .text
	global ft_strcpy

ft_strcpy:
	mov bl, 0

.loop:
	mov al, [rdi + bl]
	cmp al, 0
	je .end
	mov [rsi + bl], al
	inc bl
	jmp .loop
.end:
	mov al, [rdi + bl]
	mov [rsi + bl], al
	mov rax, rsi
	ret
