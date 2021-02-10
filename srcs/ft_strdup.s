section .text
    global _ft_strdup
    extern _ft_strlen
    extern _ft_strcpy
    extern _malloc
    extern ___error
_ft_strdup:
    push rdi
    call _ft_strlen
    add rax, 1
    mov rdi, rax
    call _malloc
    cmp rax, 0 
    je _err
    mov rdi, rax
    pop rsi
    call _ft_strcpy ;copy rdi in the reserved memory for rsi 
    ret
_err:
    mov rax, 0 ; add '\0'
    ret
