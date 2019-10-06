.data
matr:
	.word 2, 1, 4 
	.word 1, 5, 1
	.word 3, 1, 2
.text
.globl main
.ent main

det2:
	mul $t0, $a0, $a3
	mul $t1, $a1, $a2
	sub $v0, $t0, $t1
	jr $ra


det3:
	add $sp, $sp, -20
	sw $a3, 16($sp)
	sw $a2, 12($sp)
	sw $a1, 8($sp)
	sw $a0, 4($sp)
	sw $ra, 0($sp)
	
	add $fp, $sp, 4
	lw $s0, 0($fp)
	lw $a0, 16($fp)
	lw $a1, 20($fp)
	lw $a2, 28($fp)
	lw $a3, 32($fp)
	jal det2
	mul $s0, $s0, $v0

	lw $s1, 4($fp)
	lw $a0, 12($fp)
	lw $a1, 20($fp)
	lw $a2, 24($fp)
	lw $a3, 32($fp)
	jal det2
	mul $s1, $s1, $v0
	
	lw $s2, 8($fp)
	lw $a0, 12($fp)
	lw $a1, 16($fp)
	lw $a2, 24($fp)
	lw $a3, 28($fp)
	jal det2
	mul $s2, $s2, $v0
	
	add $v0, $s0, $s2
	sub $v0, $v0, $s1
	lw $ra, ($sp)
	add $sp, $sp, 4
	jr $ra
	
main:
	la $t1, matr
	lw $a0, 0($t1)
	lw $a1, 4($t1)
	lw $a2, 8($t1)
	lw $a3, 12($t1)
	add $sp, $sp, -20
	lw $t0, 16($t1)
	sw $t0, 0($sp)
	lw $t0, 20($t1)
	sw $t0, 4($sp)
	lw $t0, 24($t1)
	sw $t0, 8($sp)
	lw $t0, 28($t1)
	sw $t0, 12($sp)
	lw $t0, 32($t1)
	sw $t0, 16($sp)
	jal det3
	andi $t0, 1
	li $v0, 10
	syscall