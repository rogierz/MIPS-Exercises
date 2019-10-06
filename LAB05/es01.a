	.data
var: .word 3141592653
	.text
	.globl main
	.ent main
main:
	lw $t0, var
	li $t1, 10
	add $t3, $t3, $sp
	li $t4, '0'
do:
	divu $t0, $t1
	mflo $t0
	mfhi $t2
	subu $sp, $sp, 4
	sw $t2, ($sp)
	bne $t0, 0, do 
e:
	lw $t2, ($sp)
	addu $sp, $sp, 4
	addu $t2, $t2, $t4
	move $a0, $t2
	li $v0, 11
	syscall
	bne $t3, $sp, e
	

	li $v0, 10
	syscall
	.end main