	.file	"swap.c"
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
	push	r12               ;stack[top-1] <-- [r12]
	push	rbx               ;stack[top-2] <-- [rbx]
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	DWORD PTR -20[rbp], edi               ; -20[rbp] <-- [ edi ] 
	mov	QWORD PTR -32[rbp], rsi               ; -32[rbp] <-- [ rsi ] 
	mov	ebx, 10               ; ebx <-- 10
	mov	r12d, 20               ; r12d <-- 20
	add	ebx, r12d               ; ebx <-- [ebx] + [ r12d] ; ebx <-- 30 
	mov	eax, ebx               ; eax, <-- [ ebx ] ; eax, <-- 30
	sub	eax, r12d               ; eax <-- [eax] - [ r12d] ; eax <-- 10 
	mov	r12d, eax               ; r12d, <-- [ eax ] ; r12d, <-- 10
	sub	ebx, r12d               ; ebx <-- [ebx] - [ r12d] ; ebx <-- 20
	mov	eax, 0               ; eax <-- 0
	pop	rbx               ; rbx <-- stack[top-2]
	pop	r12               ; r12 <-- stack[top-1]
	pop	rbp               ; rbp <-- stack[top-0]
	.cfi_def_cfa 7, 8
	ret               ; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
