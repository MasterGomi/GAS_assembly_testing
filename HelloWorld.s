.intel_syntax noprefix

.section data
    hello:      .asciz "Hello world!\n"
    .equ helloLen, $-hello

.section text
.global main

main:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, helloLen
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
