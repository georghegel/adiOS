;loop:
;    jmp loop
    mov ah, 0x0e
    ;[org 0x7c1e]
    mov al, 'H'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'o'
    int 0x10

    jmp $

the_secret:
    db "X"

times 510-($-$$) db 0

dw 0xaa55