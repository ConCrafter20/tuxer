bits 16

section _TEXT class=CODE

global _x86_Video_WriteCharTeletype
_x86_Video_WriteCharTeletype:

    ; make new call frame
    push bp             ; save old callframe
    mov bp, sp          ; initilaize new callframe

    ; save bx
    push bx

    ; [bp + 0] - old callframe
    ; [bp + 2] - return adress (small memory model -> 2 bytes)
    ; [bp + 4] - first argument (character)
    ; [bp + 6] - second argument (page)
    ; note: bytes are converted to words (you can't push a single byte on the stack)
    mov ah, 0Eh
    mov al, [bp + 4]
    mov bh, [bp + 6]

    int 10h

    ; restore bx
    pop bx

    ; restore old callframe
    mov sp, bp
    pop bp
    ret