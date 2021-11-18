	.file	"twiddle.c"
	.text
	.globl	twiddle1
	.type	twiddle1, @function
twiddle1:
.LFB23:
	.cfi_startproc
	endbr64
	movq	(%rsi), %rax
	addq	(%rdi), %rax
	movq	%rax, (%rdi)
	addq	(%rsi), %rax
	movq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE23:
	.size	twiddle1, .-twiddle1
	.globl	twiddle2
	.type	twiddle2, @function
twiddle2:
.LFB24:
	.cfi_startproc
	endbr64
	movq	(%rsi), %rax
	addq	%rax, %rax
	addq	%rax, (%rdi)
	ret
	.cfi_endproc
.LFE24:
	.size	twiddle2, .-twiddle2
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
