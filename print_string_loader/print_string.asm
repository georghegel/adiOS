print_string:
    pusha                   ; save register to make sure not overwrite 'em
    loop:                   ; loop sector for printing chars
        mov al, [bx]        ; copy first byte of the string because ax can't store whole string, just 1 byte
        cmp al, 0           ; compare to \0
        je done             ; if so we done
        add bx, 1           ; else go to the next byte of the string
        mov ah, 0x0e        ; BIOS tele-type
        int 0x10
        jmp loop            ; repeat
    done:
        popa            ; pop our regs
        ret             ; return to caller. RIP knows.