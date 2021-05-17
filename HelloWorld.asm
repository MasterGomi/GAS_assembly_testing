.intel_syntax noprefix

.section data
    hello:      .ascii "Hello world!\n"
    .equ helloLen, $-hello

.section text
.global _start
.type _start, @function

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, helloLen
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
