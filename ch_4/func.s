	.file	"func.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	endbr64
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.globl	f
	.type	f, @function
f:
.LFB26:
	.cfi_startproc
	endbr64
	movq	counter(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, counter(%rip)
	ret
	.cfi_endproc
.LFE26:
	.size	f, .-f
	.globl	func1
	.type	func1, @function
func1:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$0, %eax
	call	f
	movq	%rax, %rbx
	movl	$0, %eax
	call	f
	addq	%rax, %rbx
	movl	$0, %eax
	call	f
	addq	%rax, %rbx
	movl	$0, %eax
	call	f
	addq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	func1, .-func1
	.globl	func2
	.type	func2, @function
func2:
.LFB24:
	.cfi_startproc
	endbr64
	movl	$0, %eax
	call	f
	salq	$2, %rax
	ret
	.cfi_endproc
.LFE24:
	.size	func2, .-func2
	.comm	counter,8,8
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
