	.file	"absdiff.c"
	.text
	.globl	absdiff
	.type	absdiff, @function
absdiff:
.LFB23:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	cmpq	%rsi, %rdi
	jle	.L2
	subq	%rsi, %rax
	ret
.L2:
	subq	%rdi, %rsi
	movq	%rsi, %rax
	ret
	.cfi_endproc
.LFE23:
	.size	absdiff, .-absdiff
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%ld %ld"
.LC1:
	.string	"%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movl	$40, %ebx
	movq	%fs:(%rbx), %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rsi
	leaq	.LC0(%rip), %rdi
	call	__isoc99_scanf@PLT
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	call	absdiff
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	24(%rsp), %rax
	xorq	%fs:(%rbx), %rax
	jne	.L7
	movl	$0, %eax
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
