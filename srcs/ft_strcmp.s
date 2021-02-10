section .text
    global _ft_strcmp
_ft_strcmp:
    mov rax, 0
    mov al, [rdi]
    mov bl, [rsi]
    cmp al, 0
    je _exit
    cmp bl, 0
    je _exit
    inc rdi
    inc rsi
    cmp al, bl
    je _ft_strcmp
    jne _exit
_exit:
    sub rax, rbx 
    ret