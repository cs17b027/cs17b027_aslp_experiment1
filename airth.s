	.file	"airth.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -12[rbp], 2
	mov	DWORD PTR -8[rbp], 3
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	imul	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	xor	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jne	.L2
	cmp	DWORD PTR -8[rbp], 0
	je	.L3
.L2:
	mov	eax, 1
	jmp	.L4
.L3:
	mov	eax, 0
.L4:
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	je	.L5
	cmp	DWORD PTR -8[rbp], 0
	je	.L5
	mov	eax, 1
	jmp	.L6
.L5:
	mov	eax, 0
.L6:
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], edx
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
