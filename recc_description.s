	.file	"recc.c"
	.intel_syntax noprefix
	.text
	.globl	fact
	.type	fact, @function
fact:
.LFB0:
	.cfi_startproc
	push	rbp               ;stack[top-0] <-- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp               ; rbp, <-- [ rsp ] 
	.cfi_def_cfa_register 6
	sub	rsp, 16               ; rsp <-- [rsp] -  16  
	mov	DWORD PTR -4[rbp], edi               ; -4[rbp] <-- [ edi ] ; -4[rbp] <-- 4 
	cmp	DWORD PTR -4[rbp], 0    ; compares -4[rbp] with 0
	jne	.L2                     ; if -4[rbp] != 0 then jump to .L2
	mov	eax, 1               ; eax <-- 1
	jmp	.L3                      ; jump to .L3
.L2:
	mov	eax, DWORD PTR -4[rbp]               ; eax <-- [ -4[rbp] ] ; value changes in every recuursive call
	sub	eax, 1               ; eax <-- [eax] - [ 1] ; value changes in every recuursive call 
	mov	edi, eax               ; edi, <-- [ eax ] ; value changes in every recuursive call
	call	fact
	imul	eax, DWORD PTR -4[rbp]               ; eax <-- [eax] * [ DWORD PTR -4[rbp]] ; value changes in every recuursive call 
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret               ; return
	.cfi_endproc
.LFE0:
	.size	fact, .-fact
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp               ;stack[top-1] <-- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp               ; rbp, <-- [ rsp ]
	.cfi_def_cfa_register 6
	mov	edi, 4               ; edi <-- 4
	call	fact                  ; calling fact function
	mov	eax, 0               ; eax <-- 0
	pop	rbp               ; rbp <-- stack[top-1]
	.cfi_def_cfa 7, 8
	ret               ; return
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
