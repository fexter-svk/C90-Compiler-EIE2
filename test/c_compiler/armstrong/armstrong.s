	.file	1 "armstrong.c"
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
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$0,4($fp)
	li	$2,120			# 0x78
	sw	$2,8($fp)
	lw	$2,8($fp)
	sw	$2,0($fp)
	b	$L2
	nop

$L3:
	lw	$3,0($fp)
	li	$2,1717960704			# 0x66660000
	ori	$2,$2,0x6667
	mult	$3,$2
	mfhi	$2
	sra	$4,$2,2
	sra	$2,$3,31
	subu	$2,$4,$2
	sll	$2,$2,1
	sll	$4,$2,2
	addu	$2,$2,$4
	subu	$2,$3,$2
	sw	$2,12($fp)
	lw	$3,12($fp)
	lw	$2,12($fp)
	mul	$3,$3,$2
	lw	$2,12($fp)
	mul	$2,$3,$2
	lw	$3,4($fp)
	addu	$2,$3,$2
	sw	$2,4($fp)
	lw	$2,0($fp)
	li	$3,1717960704			# 0x66660000
	ori	$3,$3,0x6667
	mult	$2,$3
	mfhi	$3
	sra	$3,$3,2
	sra	$2,$2,31
	subu	$2,$3,$2
	sw	$2,0($fp)
$L2:
	lw	$2,0($fp)
	bne	$2,$0,$L3
	nop

	lw	$3,4($fp)
	lw	$2,8($fp)
	bne	$3,$2,$L4
	nop

	li	$2,1			# 0x1
	b	$L5
	nop

$L4:
	move	$2,$0
$L5:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.1) 5.4.0 20160609"
