.intel_syntax noprefix

.text
    hello:      .asciz "Hello world!\n"
            helloLen = .- hello

.global main
main:
    mov rax, 1
    mov rdi, 1
    lea rsi, [hello + rip]
    mov rdx, helloLen
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
