	.file	"ptr.c"
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
	mov	rbp, rsp               ; rbp, <-- [ rsp ] ; 
	.cfi_def_cfa_register 6
	sub	rsp, 32               ; rsp <-- [rsp] - [ 32] ; 
	mov	rax, QWORD PTR fs:40               ; rax, <-- [ QWORD PTR fs:40 ]  
	mov	QWORD PTR -8[rbp], rax               ; -8[rbp] <-- [ rax ] 
	xor	eax, eax                               ; eax <-- 0
	mov	DWORD PTR -20[rbp], 2105               ; -20[rbp] <-- 2105
	lea	rax, -20[rbp]               ; rax <--  -20[rbp] ; rax <-- 2105 
	mov	QWORD PTR -16[rbp], rax               ; -16[rbp] <-- [ rax ] ; -16[rbp] <-- 2105 
	mov	eax, 0               ; eax <-- 0
	mov	rdx, QWORD PTR -8[rbp]               ; rdx, <-- [ -8[rbp] ] 
	xor	rdx, QWORD PTR fs:40                 ; rdx <-- 0
	je	.L3                         ; jump to .L3 if everything goes right
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret               ; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
