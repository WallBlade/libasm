section .text
    global ft_strcmp

ft_strcmp:						; params(s1 = rdi, s2 = rsi)
    xor rbx, rbx				; int i = 0
    xor rax, rax				; clear return value

.loop:
    mov al, byte [rdi + rbx]	; al = s1[i] | tmp
    mov dl, byte [rsi + rbx]	; dl = s2[i] | tmp
    cmp al, dl					; compare s1[i] == s2[i]
    jne .end					; if not equal, jump to .end
    cmp al, 0					; compare s1[i] == 0
    je .end						; if yes, return
    cmp al, 0					; compare s2[i] == 0
    je .end						; if yes, return
	inc rbx						; i++
    jmp .loop					; continue loop

.end:
    ; Make sure to clear upper 56 bits of rax and rdx before subtraction
    movzx eax, al				; Zero-extend al into rax (clearing upper bits)
    movzx edx, dl				; Zero-extend dl into rdx (clearing upper bits)
    sub rax, rdx				; rax = s1[i] - s2[i], the result is the difference between the two characters
    ret