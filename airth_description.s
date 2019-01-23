	.file	"airth.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp               ;stack[top-0] <-- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp               ; rbp, <-- [ rsp ] 
	.cfi_def_cfa_register 6
	mov	DWORD PTR -12[rbp], 2               ; -12[rbp] <-- 2
	mov	DWORD PTR -8[rbp], 3               ; -8[rbp] <-- 3
	mov	edx, DWORD PTR -12[rbp]               ; edx <-- [ -12[rbp] ] ; edx <-- 2
	mov	eax, DWORD PTR -8[rbp]               ; eax <-- [ -8[rbp] ] ; eax <-- 3
	add	eax, edx               ; eax <-- [eax] + [ edx] ; eax <-- 5
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- [ eax ] ; -4[rbp] <-- 5
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- [ -12[rbp] ] ; eax <-- 2
	imul	eax, DWORD PTR -8[rbp]               ; eax <-- [eax] * [-8[rbp]] ; eax <-- 6
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- [ eax ] ; -4[rbp] <-- 6
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- [ -12[rbp] ] ; eax <-- 2
	sub	eax, DWORD PTR -8[rbp]               ; eax <-- [eax] - [-8[rbp]] ; eax <-- -1
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- [ eax ] ; -4[rbp] <-- -1
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- [ -12[rbp] ] ; eax <-- 2
	cdq               ; Quadword dividend from double word
	idiv	DWORD PTR -8[rbp]               ; eax <-- [eax] / [-8[rbp]] ; eax <-- 0
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- [ eax ] ; -4[rbp] <-- 0
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- [ -12[rbp] ] ; eax <-- 2
	xor	eax, DWORD PTR -8[rbp]		; eax <-- eax xor [ -8[rbp] ] ; eax <-- 1
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- [ eax ] ; -4[rbp] <-- 1
	cmp	DWORD PTR -12[rbp], 0		; if -12[rbp] = 0 pass true else pass false
	jne	.L2				; if pass value not false jump .L2
	cmp	DWORD PTR -8[rbp], 0		;if -8[rbp] = 0 pass true else pass false
	je	.L3                             ; if pass value true jump .L3
.L2:
	mov	eax, 1               ; eax <-- 1
	jmp	.L4                  ; jump to .l4
.L3:
	mov	eax, 0               ; eax <-- 0
.L4:
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- [ eax ] ; -4[rbp] <-- 1 
	cmp	DWORD PTR -12[rbp], 0		     ; if -12[rbp] = 0 pass true else pass false
	je	.L5                                  ; if pass value true jump .L5
	cmp	DWORD PTR -8[rbp], 0                 ; if -8[rbp] = 0 pass true else pass false
	je	.L5                                  ; if pass value true jump .L5
	mov	eax, 1               ; eax <-- 1
	jmp	.L6               ; jump to .l6
.L5:
	mov	eax, 0               ; eax <-- 0
.L6:
	mov	DWORD PTR -4[rbp], eax               ; -4[rbp] <-- [ eax ] ; -4[rbp] <-- 1 
	mov	eax, DWORD PTR -12[rbp]               ; eax <-- [ -12[rbp] ] ; eax <-- 2
	cdq               ; Quadword dividend from double word
	idiv	DWORD PTR -8[rbp]               ; eax <-- [eax] / [-8[rbp]] ; eax <-- 0
	mov	DWORD PTR -4[rbp], edx               ; -4[rbp] <-- [ edx ] ; -4[rbp] <-- 0 
	mov	eax, 0               ; eax <-- 0
	pop	rbp               ; rbp <-- stack[top-0]
	.cfi_def_cfa 7, 8
	ret               ; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
