section .text
    global _ft_strlen
_ft_strlen:
    mov rax, 0
    cmp byte [rdi + rax], 0
    jnz _loop
    jz _ret
_loop:
    add rax, 1
    cmp byte [rdi + rax], 0
    jnz _loop
    jz _ret
_ret:
    ret