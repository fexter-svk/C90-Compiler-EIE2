	.file	1 "int_9.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	li	$2,10			# 0xa
	sw	$2,0($fp)
	li	$2,2			# 0x2
	sw	$2,4($fp)
	lw	$3,4($fp)
	lw	$2,0($fp)
	addu	$2,$3,$2
	sll	$2,$2,9
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	sw	$2,4($fp)
	lw	$3,4($fp)
	lw	$2,0($fp)
	addu	$2,$3,$2
	sra	$2,$2,3
	li	$3,-1840709632			# 0xffffffff92490000
	ori	$3,$3,0x2493
	mult	$2,$3
	mfhi	$3
	addu	$3,$3,$2
	sra	$3,$3,2
	sra	$2,$2,31
	subu	$2,$3,$2
	sw	$2,4($fp)
	lw	$3,4($fp)
	lw	$2,0($fp)
	addu	$2,$3,$2
	sra	$2,$2,3
	li	$3,-1840709632			# 0xffffffff92490000
	ori	$3,$3,0x2493
	mult	$2,$3
	mfhi	$3
	addu	$3,$3,$2
	sra	$3,$3,2
	sra	$2,$2,31
	subu	$2,$3,$2
	addiu	$2,$2,-201
	sw	$2,4($fp)
	lw	$2,4($fp)
	li	$3,-1840709632			# 0xffffffff92490000
	ori	$3,$3,0x2493
	mult	$2,$3
	mfhi	$3
	addu	$3,$3,$2
	sra	$4,$3,2
	sra	$3,$2,31
	subu	$4,$4,$3
	move	$3,$4
	sll	$3,$3,3
	subu	$3,$3,$4
	subu	$4,$2,$3
	sll	$2,$4,2
	sw	$2,4($fp)
	lw	$2,4($fp)
	addiu	$2,$2,1
	lw	$3,4($fp)
	mul	$2,$3,$2
	sw	$2,4($fp)
	lw	$3,4($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x3
	and	$2,$3,$2
	bgez	$2,$L2
	nop

	addiu	$2,$2,-1
	li	$3,-4			# 0xfffffffffffffffc
	or	$2,$2,$3
	addiu	$2,$2,1
$L2:
	ori	$2,$2,0x17
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.1) 5.4.0 20160609"
