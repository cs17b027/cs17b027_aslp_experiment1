	.file	"incre.c"
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
	sub	rsp, 64               ; rsp <-- [rsp] - 64 
	mov	rax, QWORD PTR fs:40               ; rax, <-- [ rax, QWORD PTR fs:40 ] 
	mov	QWORD PTR -8[rbp], rax               ; -8rbp <-- [ rax ] 
	xor	eax, eax
	mov	DWORD PTR -48[rbp], 1               ; -48[rbp] <-- 1
	mov	DWORD PTR -44[rbp], 2               ; -44[rbp] <-- 2
	mov	DWORD PTR -40[rbp], 3               ; -40[rbp] <-- 3
	mov	DWORD PTR -36[rbp], 4               ; -36[rbp] <-- 4
	mov	DWORD PTR -32[rbp], 5               ; -32[rbp] <-- 5
	mov	DWORD PTR -28[rbp], 6               ; -28[rbp] <-- 6
	mov	DWORD PTR -24[rbp], 7               ; -24[rbp] <-- 7
	mov	DWORD PTR -20[rbp], 8               ; -20[rbp] <-- 8
	mov	DWORD PTR -16[rbp], 9               ; -16[rbp] <-- 9
	mov	DWORD PTR -12[rbp], 0               ; -12[rbp] <-- 0
	mov	DWORD PTR -52[rbp], 0               ; -52[rbp] <-- 0
	jmp	.L
.L3:
	mov	eax, DWORD PTR -52[rbp]               ; eax <-- [ -52[rbp] ] ; value change in each loop itration
	cdqe               ; Quadword dividend from double word
	mov	eax, DWORD PTR -48[rbp+rax*4]               ; eax <-- [ -48[rbp+rax*4] ] ; value change in each loop itration 
	lea	edx, 1[rax]               ; edx <--  [rax] + 1 ; value change in each loop itration 
	mov	eax, DWORD PTR -52[rbp]               ; eax <-- [ -52[rbp] ] ; value change in each loop itration 
	cdqe               ; Quadword dividend from double word
	mov	DWORD PTR -48[rbp+rax*4], edx               ; -48[rbp+rax*4] <-- [ edx ] ; value change in each loop itration
	add	DWORD PTR -52[rbp], 1               ; DWORD PTR -52[rbp] <-- [DWORD PTR -52[rbp]] +  1 ; value change in each loop itration 
.L2:
	cmp	DWORD PTR -52[rbp], 9              ;compares [-52[rbp] ] with 9
	jle	.L3                                ; if [-52[rbp] ] <= 9 jump .L3
	mov	eax, 0               ; eax <-- 0
	mov	rcx, QWORD PTR -8[rbp]               ; rcx, <-- [ -8[rbp ]
	xor	rcx, QWORD PTR fs:40
	je	.L5                                 ; jump to .L5 if [-52[rbp]] == 10
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret               ; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
