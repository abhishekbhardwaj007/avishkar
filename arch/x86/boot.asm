; A boot file to show hello on the screen

; Enable teletype mode
mov ah, 0x0E

; Setting up ax and
; calling BIOS routine via interrupt to display whats in al
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

; Infinite jump
loop : jmp loop

; Padding with zeroes
times 510 - ($ - $$) db 0

; To identify this as boot sector the BIOS looks 
; for 0xaa55 as the last two bytes
dw 0xaa55
