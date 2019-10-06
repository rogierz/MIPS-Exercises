.data
.text
.globl main
.ent main

combSempl:
	add $sp, $sp, -4
	sw $ra, ($sp)
	move $t0, $a0
	move $t1, $a1
	sub $t2, $a0, $a1
	jal fact
	move $t0, $v0
	move $a0, $t1
	jal fact
	move $t1, $v0
	move $a0, $t2
	jal fact
	move $t2, $v0
	mul $t1, $t1, $t2
	div $v0, $t0, $t1
	lw $ra, ($sp)
	add $sp, $sp, 4
	jr $ra


fact:
	add $v0, $0, 1
	beq $a0, $v0, ne
	bne $a0, $0, st
ne:	jr $ra
st:	add $sp, $sp, -4
	sw $ra, ($sp)
	add $a0, $a0, -1
	jal fact
	add $a0, $a0, 1
	mul $v0, $a0, $v0
	lw $ra, ($sp)
	add $sp, $sp, 4
	jr $ra
	

main:
	li $v0, 5
	syscall
	move $a0, $v0
	li $v0, 5
	syscall
	move $a1, $v0
	
	jal combSempl
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall