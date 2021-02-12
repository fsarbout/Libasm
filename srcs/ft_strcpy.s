section .text
    global _ft_strcpy
_ft_strcpy:
    mov rax, rdi
    mov rcx, 0
_copy:
    cmp byte [rsi + rcx], 0
    je _exit
    mov dl, byte [rsi + rcx]
    mov byte [rdi + rcx], dl
    add rcx, 1
    jmp _copy
_exit:
    mov dl, 0
    mov byte [rdi + rcx], dl
    ret