	.file	"a_swap.c"
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
	mov	rbp, rsp               ; rbp, <-- [ rsp ] ; rbp <-- 0
	.cfi_def_cfa_register 6
	sub	rsp, 48               ; rsp <-- [rsp] - 48 ; rsp <-- -48
	mov	rax, QWORD PTR fs:40               ; rax, <-- [ QWORD PTR fs:40 ] 
	mov	QWORD PTR -8[rbp], rax               ; -8[rbp] <-- [ rax ]
	xor	eax, eax
	mov	DWORD PTR -32[rbp], 1               ; -32[rbp] <-- 1
	mov	DWORD PTR -28[rbp], 2               ; -28[rbp] <-- 2
	mov	DWORD PTR -24[rbp], 3               ; -24[rbp] <-- 3
	mov	DWORD PTR -20[rbp], 11               ; -20[rbp] <-- 11
	mov	DWORD PTR -16[rbp], 22               ; -16[rbp] <-- 22
	mov	DWORD PTR -12[rbp], 33               ; -12[rbp] <-- 33
	mov	DWORD PTR -40[rbp], 0               ; -40[rbp] <-- 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -40[rbp]               ; eax <-- [ -40[rbp] ] ; eax <-- 
	cdqe               ; Quadword dividend from double word
	mov	eax, DWORD PTR -32[rbp+rax*4]               ; eax <-- [ -32[rbp+rax*4] ] ; eax <-- 
	mov	DWORD PTR -36[rbp], eax               ; -36[rbp] <-- [ eax ] ; -36[rbp] <-- 
	mov	eax, DWORD PTR -40[rbp]               ; eax <-- [ -40[rbp] ] ; eax <-- 
	cdqe               ; Quadword dividend from double word
	mov	edx, DWORD PTR -20[rbp+rax*4]               ; edx <-- [ -20[rbp+rax*4] ] ; edx <-- 
	mov	eax, DWORD PTR -40[rbp]               ; eax <-- [ -40[rbp] ] ; eax <-- 
	cdqe               ; Quadword dividend from double word
	mov	DWORD PTR -32[rbp+rax*4], edx               ; -32[rbp+rax*4] <-- [ edx ] ; -32[rbp+rax*4] <-- 
	mov	eax, DWORD PTR -40[rbp]               ; eax <-- [ -40[rbp] ] ; eax <-- 
	cdqe               ; Quadword dividend from double word
	mov	edx, DWORD PTR -36[rbp]               ; edx <-- [ -36[rbp] ] ; edx <-- 
	mov	DWORD PTR -20[rbp+rax*4], edx               ; -20[rbp+rax*4] <-- [ edx ] ; -20[rbp+rax*4] <-- 
	add	DWORD PTR -40[rbp], 1               ; DWORD PTR -40[rbp] <-- [DWORD PTR -40[rbp]] + [ 1] ; DWORD PTR -40[rbp] <-- 
.L2:
	cmp	DWORD PTR -40[rbp], 2         ; pass true if [-40[rbp]] <= 2 else false
	jle	.L3                           ; jump to .L3 if pass value is true
	mov	eax, 0               ; eax <-- 0
	mov	rcx, QWORD PTR -8[rbp]               ; rcx, <-- [ -8[rbp] ]  
	xor	rcx, QWORD PTR fs:40                  ; rcx <-- [rcx] xor [QWORD PTR fs:40]
	je	.L5                             ;if [-40[rbp]] == 3
	call	__stack_chk_fail@PLT            ; stack check function
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret               ; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
