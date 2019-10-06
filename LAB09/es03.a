RIGHE = 4
COLONNE = 5
.data
matrice: .byte 0, 1, 3, 6, 2, 7, 13, 20, 12, 21, 11, 22, 10, 23, 9, 24, 8, 25, 43, 62
.text
.globl main
.ent main

main:
	la $a0, matrice
	li $a1, 12
	li $a2, RIGHE
	li $a3, COLONNE
	jal contaVicini
	li $v0, 10
	syscall
.end main

contaVicini:
	div $a1, $a3
	mflo $t0 #t0 = numero di riga del i-esimo elemento
	mfhi $t1 #t1 = numero di colonna del i-esimo elemento
	
	subu $t0, 1
	subu $t1, 1
	
	mult $t0, $a3
	mflo $t0 #numero di byte da sommare a matrice per arrivare all'i-1 esima riga
	add $a0, $a0, $t0
	add $a0, $a0, $t1
	li $t2, 0
ciclo:

	lbu $t3, ($a0)
	add $t2, $t2, $t3
	
	beq $t4, 1, next
	lbu $t3, 1($a0)
	add $t2, $t2, $t3
	
next:
	lbu $t3, 2($a0)
	add $t2, $t2, $t3
	add $a0, $a0, $a3
	addi $t4, 1
	bne $t4, 3, ciclo
	move $v0, $t2
	jr $ra