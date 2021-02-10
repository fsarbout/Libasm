section .text
    global _ft_write
    extern ___error
_ft_write:
    mov rax, 0x2000004
    ;The system call code is placed in rax , it’s an os work and 
    ;cannot be changed by application programs 
    syscall 
    ;the return is already in rax depending on the write return 
    ;in the instruction above , the process gonna stops and goes to the kernel to look for 0x2000004
    jc _error ;if the syscall return any error jc = 1 (if syscall returns -1 ( != 0)) , saves the message error in errno3
    ret
_error:
    push rax ;save the value of rax in stack cuz it gonna be affected when callig rax
    ;>>rax will point on the adress of errno
    call ___error
    pop qword[rax] ;pop 8 bits from rax , little endia 
    mov rax, -1 ;in case an error occurs 
    ret

;the syscall takes to 6 arguments (6 registers , and it's doesn't
; use stack based arguments ), no arguments is passed directly to stack


;syscall() saves CPU registers before making the system call, 
;restores the registers upon return from the system call,
;and stores any error returned by the system call in errno(3)>>>"no such process"
;syscall API's for for the interface between the user and the OS kernel 

;ABOUT ERRNO

;errno.h defines the integer of the variable errno to specify the error that happened
;errno cannot be seted to 0 bym any syscall 