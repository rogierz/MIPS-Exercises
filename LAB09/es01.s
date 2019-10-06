DIM = 3
	.data
matr1: 
	.word 4, -45, 15565
	.word 6458, 4531, 124
	.word -548, 2124, 31000
matr2:
	.word 6, -5421, -547
	.word -99, 4531, 1456
	.word 4592, 118, 31999
ris: .space 12
	.text
	.globl main
	.ent main

main:
	la $a0, matr1
	la $a1, matr2
	la $a2, ris
	li $a3, DIM
	li $t0, 2
	sub $sp, $sp, 4
	sw $t0, ($sp)
	jal proceduraVariazione
	li $v0, 10
	syscall
	
proceduraVariazione:
	lw $t0, ($sp)
	li $t1, 4
	
	mult $a3, $t1
	mflo $t2

	add $a1, $a1, $t2
	subu $a1, 4
	move $t4, $t2
	
	mult $t0, $t2
	mflo $t2
	add $a0, $a0, $t2
	lw $t0, ($sp)
	li $t1, 0
	li $t6, 100
do: beq $t1, $a3, endw
	lw $t2, ($a0)
	lw $t3, ($a1)
	sub $t5, $t3, $t2
	mult $t5, $t6
	mflo $t5
	div $t5, $t2
	mflo $t5
	sw $t5, ($a2)
	
	addi $a0, 4
	add $a1, $a1, $t4
	addi $a2, 4
	addi $t1, 1
	j do
endw:
	jr $ra