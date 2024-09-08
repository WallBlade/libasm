section .text
    global ft_strcpy

ft_strcpy:										; params(dest = rdi, src = rsi)
    xor rbx, rbx							; int i = 0
    xor rax, rax							; clear return value

.loop:
    mov al, [rsi + rbx]				; al = tmp | tmp = src[i]
    cmp BYTE [rsi + rbx], 0 	; compare src[i] == 0
    je  .end ;								; if yes, return
    mov BYTE [rdi + rbx], al	; dest[i] = tmp
    inc rbx										;	i++
    jmp .loop									;	continue loop

.end:
    mov BYTE [rdi + rbx], 0		; copy null teminating byte into dest[i]
    mov rax, rdi							;	copy dest into return register
    ret