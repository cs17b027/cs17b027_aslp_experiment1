	.file	"min_max.c"
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
	sub	rsp, 64               ; rsp <-- [rsp] - [ 64]
	mov	rax, QWORD PTR fs:40               ; rax, <-- [ QWORD PTR fs:40 ] 
	mov	QWORD PTR -8[rbp], rax               ; -8[rbp] <-- [ rax ] 
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
	mov	DWORD PTR -60[rbp], 100               ; -60[rbp] <-- 100
	mov	DWORD PTR -56[rbp], -11               ; -56[rbp] <-- -11 ; -56[rbp] <-- -11 
	mov	DWORD PTR -52[rbp], 0               ; -52[rbp] <-- 0
	jmp	.L2                                   ; jump to L2
.L5:
	mov	eax, DWORD PTR -52[rbp]               ; eax <-- [ -52[rbp] ] ; value changes in every iteration
	cdqe               ; Quadword dividend from double word
	mov	eax, DWORD PTR -48[rbp+rax*4]               ; eax <-- [ -48[rbp+rax*4] ] ; value changes in every iteration
	cmp	DWORD PTR -60[rbp], eax                        ; compares -60[rbp] with eax
	jle	.L3                                            ; jump to .L3 if -60[rbp] < eax
	mov	eax, DWORD PTR -52[rbp]               ; eax <-- [ -52[rbp] ] ; value changes in every iteration 
	cdqe               ; Quadword dividend from double word
	mov	eax, DWORD PTR -48[rbp+rax*4]               ; eax <-- [ -48[rbp+rax*4] ] ; value changes in every iteration 
	mov	DWORD PTR -60[rbp], eax               ; -60[rbp] <-- [ eax ] ; value changes in every iteration 
.L3:
	mov	eax, DWORD PTR -52[rbp]               ; eax <-- [ -52[rbp] ] ; value changes in every iteration 
	cdqe               ; Quadword dividend from double word
	mov	eax, DWORD PTR -48[rbp+rax*4]               ; eax <-- [ -48[rbp+rax*4] ] value changes in every iteration 
	cmp	DWORD PTR -56[rbp], eax ; compares -56[rbp] with eax
	jge	.L4                                   ; jump to .L4 if -56[rbp] > eax
	mov	eax, DWORD PTR -52[rbp]               ; eax <-- [ -52[rbp] ] ; value changes in every iteration
	cdqe               ; Quadword dividend from double word
	mov	eax, DWORD PTR -48[rbp+rax*4]               ; eax <-- [ -48[rbp+rax*4] ] ; value changes in every iteration 
	mov	DWORD PTR -56[rbp], eax               ; -56[rbp] <-- [ eax ] ; value changes in every iteration 
.L4:
	add	DWORD PTR -52[rbp], 1               ; -52[rbp] <-- -52[rbp]+1
.L2:
	cmp	DWORD PTR -52[rbp], 9
	jle	.L5
	mov	eax, 0               ; eax <-- 0
	mov	rdx, QWORD PTR -8[rbp]               ; rdx, <-- [ QWORD ] ; rdx, <-- 
	xor	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret               ; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
