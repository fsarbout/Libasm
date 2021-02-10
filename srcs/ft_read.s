;the third argumgent rd

section .text
    global _ft_read
    extern ___error
_ft_read:
    mov rax, 0x2000003
    ;The system call code is placed in rax , it’s an os work and 
    ;cannot be changed by application programs 
    syscall ;the return is already in rax depending on the write return
    ;in the instruction above , the process gonna stops and goes to the kernel to look for 0x2000003 
    jc _error ;if the syscall return any error jc = 1
    ret
_error:
    push rax
    call ___error
    pop qword[rax]
    mov rax, -1 ;in case an error occurs 
    ret