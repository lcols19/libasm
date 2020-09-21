; mov means move
; eax means move the right of syscall we wanna call

global _start

section .text:

_start ; sort of main for asm
	mov eax, 0x4			;use the right syscall
	mov ecx, 1				; use stdout as fd
	mov	ebx, message		; use the message as the buffer
	mov edx, message_length	; supply the length
	int 0x80				; invoking the syscall, int means interrupt

	; now exit

	mov eax, 0x1			; exit syscal is number one in unistd_32.h, th eocmma is an operand
	mov ebx, 0				; specifying returning value
	int 0x80

section .data:
	message: db "Hello World!", 0xA
	message_length equ $-message 