	.file	1 "fibonacci_loop.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.abicalls
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"First 100 Fibonacci numbers are  : %d, %d, \000"
	.align	2
$LC1:
	.ascii	"%llu, \000"
	.globl	__umoddi3
	.globl	__udivdi3
	.align	2
$LC2:
	.ascii	"%llu%.3d, \000"
	.align	2
$LC4:
	.ascii	"   Total CPU time is %f seconds.\000"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,96,$31		# vars= 8, regs= 10/4, args= 24, gp= 8
	.mask	0xc0ff0000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-96
	lw	$25,%call16(clock)($28)
	sw	$31,76($sp)
	sw	$23,68($sp)
	sw	$20,56($sp)
	sw	$19,52($sp)
	sw	$18,48($sp)
	sw	$17,44($sp)
	sw	$16,40($sp)
	swc1	$f22,92($sp)
	swc1	$f23,88($sp)
	.cprestore	24
	sw	$fp,72($sp)
	sw	$22,64($sp)
	sw	$21,60($sp)
	swc1	$f20,84($sp)
	.reloc	1f,R_MIPS_JALR,clock
1:	jalr	$25
	swc1	$f21,80($sp)

	lw	$28,24($sp)
	li	$5,1			# 0x1
	mtc1	$2,$f0
	lw	$25,%call16(__printf_chk)($28)
	move	$4,$0
	sw	$5,20($sp)
	lui	$5,%hi($LC0)
	sw	$4,16($sp)
	move	$7,$0
	move	$6,$0
	addiu	$5,$5,%lo($LC0)
	li	$4,1			# 0x1
	lui	$23,%hi($LC1)
	cvt.d.w	$f22,$f0
	.reloc	1f,R_MIPS_JALR,__printf_chk
1:	jalr	$25
	li	$18,91			# 0x5b

	move	$17,$0
	lw	$28,24($sp)
	li	$16,1			# 0x1
	move	$20,$0
	li	$19,1			# 0x1
	.option	pic0
	b	$L2
	.option	pic2
	addiu	$23,$23,%lo($LC1)

$L6:
	move	$20,$22
	move	$19,$21
$L2:
	lw	$25,%call16(__printf_chk)($28)
	move	$6,$17
	move	$7,$16
	li	$4,1			# 0x1
	.reloc	1f,R_MIPS_JALR,__printf_chk
1:	jalr	$25
	move	$5,$23

	addu	$2,$16,$19
	sltu	$4,$2,$16
	addu	$3,$17,$20
	addiu	$18,$18,-1
	move	$22,$17
	move	$21,$16
	lw	$28,24($sp)
	addu	$17,$4,$3
	bne	$18,$0,$L6
	move	$16,$2

	lw	$25,%call16(__umoddi3)($28)
	move	$4,$22
	move	$5,$21
	li	$7,1000			# 0x3e8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$0

	lw	$28,24($sp)
	move	$4,$22
	lw	$25,%call16(__udivdi3)($28)
	move	$5,$21
	li	$7,1000			# 0x3e8
	move	$6,$0
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	move	$fp,$3

	lw	$28,24($sp)
	move	$4,$17
	lw	$25,%call16(__udivdi3)($28)
	move	$5,$16
	li	$7,1000			# 0x3e8
	move	$6,$0
	move	$16,$2
	.reloc	1f,R_MIPS_JALR,__udivdi3
1:	jalr	$25
	move	$22,$3

	lw	$28,24($sp)
	move	$8,$2
	lw	$25,%call16(__umoddi3)($28)
	li	$7,1000			# 0x3e8
	move	$6,$0
	move	$4,$20
	move	$5,$19
	sw	$8,36($sp)
	move	$23,$3
	move	$21,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$18,$3

	addu	$17,$fp,$3
	slt	$2,$17,1000
	lw	$28,24($sp)
	bne	$2,$0,$L3
	nop

	lw	$8,36($sp)
	addiu	$18,$23,1
	sltu	$21,$18,$23
	addu	$21,$21,$8
$L3:
	lui	$20,%hi($LC2)
	li	$23,7			# 0x7
	addiu	$20,$20,%lo($LC2)
	.option	pic0
	b	$L5
	.option	pic2
	li	$19,1000			# 0x3e8

$L7:
	move	$21,$3
	move	$18,$2
	move	$17,$4
$L5:
	lw	$25,%call16(__printf_chk)($28)
	move	$6,$21
	move	$7,$18
	move	$5,$20
	li	$4,1			# 0x1
	.reloc	1f,R_MIPS_JALR,__printf_chk
1:	jalr	$25
	sw	$17,16($sp)

	addu	$2,$22,$18
	addu	$4,$fp,$17
	addu	$16,$16,$21
	sltu	$3,$2,$22
	addiu	$5,$2,1
	slt	$6,$4,1000
	lw	$28,24($sp)
	addiu	$23,$23,-1
	sltu	$7,$5,$2
	bne	$6,$0,$L4
	addu	$3,$3,$16

	bne	$19,$0,1f
	div	$0,$4,$19
	break	7
1:
	addu	$3,$7,$3
	move	$2,$5
	mfhi	$4
$L4:
	move	$16,$21
	move	$22,$18
	bne	$23,$0,$L7
	move	$fp,$17

	lw	$25,%call16(clock)($28)
	nop
	.reloc	1f,R_MIPS_JALR,clock
1:	jalr	$25
	nop

	lw	$28,24($sp)
	mtc1	$2,$f0
	lw	$25,%call16(putchar)($28)
	li	$4,10			# 0xa
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	cvt.d.w	$f20,$f0

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	sub.d	$f20,$f20,$f22
	lwc1	$f1,%lo($LC3)($2)
	lw	$28,24($sp)
	div.d	$f0,$f20,$f0
	lui	$5,%hi($LC4)
	lw	$25,%call16(__printf_chk)($28)
	addiu	$5,$5,%lo($LC4)
	mfc1	$7,$f0
	mfc1	$6,$f1
	.reloc	1f,R_MIPS_JALR,__printf_chk
1:	jalr	$25
	li	$4,1			# 0x1

	lwc1	$f22,92($sp)
	lwc1	$f20,84($sp)
	lw	$31,76($sp)
	lw	$fp,72($sp)
	lw	$23,68($sp)
	lw	$22,64($sp)
	lw	$21,60($sp)
	lw	$20,56($sp)
	lw	$19,52($sp)
	lw	$18,48($sp)
	lw	$17,44($sp)
	lw	$16,40($sp)
	lwc1	$f23,88($sp)
	lwc1	$f21,80($sp)
	move	$2,$0
	jr	$31
	addiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
$LC3:
	.word	1093567616
	.word	0
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
