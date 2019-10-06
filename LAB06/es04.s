.data
vett: .word 3 54 7 900 11
DIM = 5
.text
.globl main
.ent main

max:
	add $sp, $sp, -16
	sw $t3, 12($sp)
	sw $t2, 8($sp)
	sw $t1, 4($sp)
	sw $t0, 0($sp)
	move $t1, $a0
	move $t2, $a1
	lw $t0, ($t1)
	add $t1, $t1, 4
do:
	lw $t3, ($t1)
	blt $t3, $t0, jm
	move $t0, $t3
jm:	add $t1, $t1 4
	add $t2, $t2, -1
	bne $t2, $0, do
	move $v0, $t0
	lw $t0, 0($sp)
	lw $t1, 4($sp)
	lw $t2, 8($sp)
	lw $t3, 12($sp)
	add $sp, $sp, 16
	jr $ra


main:
	la $a0, vett
	li $a1, DIM
	jal max
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall