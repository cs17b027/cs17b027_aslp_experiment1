	.file	"a_swap.c"
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
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -32[rbp], 1
	mov	DWORD PTR -28[rbp], 2
	mov	DWORD PTR -24[rbp], 3
	mov	DWORD PTR -20[rbp], 11
	mov	DWORD PTR -16[rbp], 22
	mov	DWORD PTR -12[rbp], 33
	mov	DWORD PTR -40[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	edx, DWORD PTR -20[rbp+rax*4]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	DWORD PTR -32[rbp+rax*4], edx
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	edx, DWORD PTR -36[rbp]
	mov	DWORD PTR -20[rbp+rax*4], edx
	add	DWORD PTR -40[rbp], 1
.L2:
	cmp	DWORD PTR -40[rbp], 2
	jle	.L3
	mov	eax, 0
	mov	rcx, QWORD PTR -8[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
