section .text
global main
main:
    mov ebp, esp; for correct debugging
    xor ebx, ebx
    mov ax, 11
    shl ax, 1 
    mov bx, 6
    mov cx, 4
    xchg ax, bx
    mul cx
    sub bx, ax
    mov ax, 15
    mov cx, 7
    sub ax, cx
    xchg ax, bx
    idiv bx
    mov ah, 0
    xchg ax, dx ;  результат первой дроби (dx)
    mov ax, 29
    xor ebx, ebx
    mov bh, 4    
    div bh
    mov ah, 0
    xchg cx, ax
    mov ax, 7
    mov bh, 4
    div bh
    mov ah, 0
    add cx, ax
    mov ax, 2
    mov bx, 3
    add ax, bx
    xchg ax, cx
    mov bx, cx
    div bl
    mov ah, 0 ; результат второй дроби (ax)
    sub dx, ax ; результат в bx (fe=-2 - two's complement)
    xor eax, eax  
    ret