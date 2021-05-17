.intel_syntax noprefix

.data
    hello:      .asciz "Hello world!\n"
            helloLen = .- hello

.text
.global main

main:
    mov rax, 1
    mov rdi, 1
    mov rsi, OFFSET hello
    mov rdx, helloLen
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
