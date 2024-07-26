[org 0x7c00]                    ; Tell the assembler where this code will be loaded
mov bx, HELLO_MSG               ; move string into the bx reg
call print_string               ; call function to print
call print_nl                   ; print new line after
mov bx, GOODBYE_MSG             ; move string into the bx reg
call print_string               ; same call function to print
call print_nl                   ; print new line after

jmp $                           ; hang

%include "print_string.asm"     ; include print string "simply put code from it to here"
%include "print_nl.asm"         ; include print new line "simply put code from it to here"

; Data
HELLO_MSG:                      ; data sector which stores string
    db 'Hello, World!', 0       ; 0 means '\0' at the end of the string

GOODBYE_MSG:                    ; data sector which stores string
    db 'Goodbye!', 0

times 510-($-$$) db 0
dw 0xaa55