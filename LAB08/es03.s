NUM = 5
DIM = NUM * 4
SCONTO = 30
ARROTONDA = 1
.data
prezzi: .word 39, 1880, 2394, 1000, 1590
scontati: .space DIM
.text
.globl main
.ent main

main:
	la $a0, prezzi
	la $a1, scontati
	li $a2, NUM
	li $a3, SCONTO
	li $t0, ARROTONDA
	subu $sp, 4
	sw $t0, ($sp)
	jal calcola_sconto
	li $v0, 10
	syscall

calcola_sconto: 
	lw $s0, ($sp) #in $s0 ho il flag sull'arrotondamento
	sw $ra, ($sp)
	
	li $t0, 0
	
while:
	beq $t0, $a2, endw
	
	subu $sp, 20
	sw $a0, ($sp)
	sw $a1, 4($sp)
	sw $a2, 8($sp)
	sw $a3, 12($sp)
	sw $t0, 16($sp)
	
	lw $a0, ($a0)
	add $t2, $t2, $a0 
	move $a1, $a3
	move $a2, $s0
	jal calcola
	add $t3, $t3, $v0
	lw $a0, ($sp)
	lw $a1, 4($sp)
	lw $a2, 8($sp)
	lw $a3, 12($sp)
	lw $t0, 16($sp)
	addiu $sp, 20
	
	sw $v0, ($a1)
	
	addi $a0, 4
	addi $a1, 4
	addi $t0, 1
	j while
endw:	
	lw $ra, ($sp)
	addi $sp, 4
	subu $sp, 4
	sub $v0, $t2, $t3
	jr $ra
	
calcola:
	li $t0, 100
	sub $t0, $t0, $a1
	mult $a0, $t0
	mflo $v0
	li $t0, 100
	div $v0, $v0, $t0
	mflo $v0
	mfhi $t0
	beq $a2, 0, retcalcola
	blt $t0, 50, retcalcola
	addi $v0, 1
retcalcola:
	jr $ra