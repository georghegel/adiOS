print_nl:
    pusha               ; save registers onto the stack
    mov al, 10          ; new line char
    mov ah, 0x0e        ; BIOS tele-type
    int 0x10
    mov al, 13          ; carriage return to the beginning of the line
    mov ah, 0x0e        ; BIOS tele-type
    int 0x10
    popa                ; pop registers from the stack
    ret                 ; go back to the place from where we've been called. RIP knows.