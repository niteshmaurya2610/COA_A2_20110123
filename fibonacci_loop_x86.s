	.file	"fibonacci_loop.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "First 100 Fibonacci numbers are  : %d, %d, \0"
.LC1:
	.ascii "%llu, \0"
.LC2:
	.ascii "%llu%.3d, \0"
	.align 8
.LC4:
	.ascii "   Total CPU time is %f seconds.\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB31:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	call	__main
	call	clock
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$1, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rcx
	call	printf
	movl	$3, -4(%rbp)
.L3:
	cmpl	$93, -4(%rbp)
	jg	.L2
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	printf
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L3
.L2:
	movq	-16(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	imulq	$1000, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	imulq	$1000, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -32(%rbp)
	movl	-52(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	cmpl	$999, -40(%rbp)
	jle	.L4
	addq	$1, -32(%rbp)
.L4:
	movl	$94, -4(%rbp)
.L7:
	cmpl	$100, -4(%rbp)
	jg	.L5
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	printf
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-52(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	cmpl	$999, -40(%rbp)
	jle	.L6
	addq	$1, -32(%rbp)
	movl	-40(%rbp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$1000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
.L6:
	addl	$1, -4(%rbp)
	jmp	.L7
.L5:
	call	clock
	cvtsi2sd	%eax, %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	$10, %ecx
	call	putchar
	movsd	-48(%rbp), %xmm1
	movsd	-48(%rbp), %xmm0
	movq	%xmm0, %rdx
	leaq	.LC4(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$96, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.long	0
	.long	1083129856
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	clock;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
