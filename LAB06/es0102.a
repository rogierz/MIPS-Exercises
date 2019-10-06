.data
str: .asciiz "Inserisci lato: "
.text
.globl main
.ent main

stampa_n_asterischi:
	bne $a0, $0, st
	jr $ra
st:	add $sp, $sp, -12
	sw $t0, 8($sp)
	sw $t1, 4($sp)
	sw $v0, 0($sp)
	move $t1, $a0 #-> salvo in $t1 il numero di asterischi
	li $t0, 0
	li $v0, 11
	add $a0, $0, '*'
do:
	addi $t0, 1
	syscall
	bne $t0, $t1, do
	
	add $a0, $0, '\n'
	syscall
	
	move $a0, $t1
	lw $v0, 0($sp)
	lw $t1, 4($sp)
	lw $t0, 8($sp)
	add $sp, $sp, 12
	jr $ra
	
	
stampaTriangolo:
	add $sp, $sp, -4
	sw $ra, ($sp)
start:	
	add $a0, $t0, 1 #$a0 -> param stampa_n_asterischi
	jal stampa_n_asterischi
	
	add $t0, $t0, 1
	bne $t0, $v0, start
	lw $ra, ($sp)
	add $sp, $sp, 4
	jr $ra
	
stampaQuadrato:
	add $a0, $0, $v0
	add $sp, $sp, -4
	sw $ra, ($sp)
startt:	
	jal stampa_n_asterischi
	add $t0, $t0, 1
	bne $t0, $v0, startt
	lw $ra, ($sp)
	add $sp, $sp, 4
	jr $ra
	
main:
	la $a0, str
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	# corretto
	
	jal stampaTriangolo
	
	add $sp, $sp, -4
	sw $v0, ($sp)
	li $v0, 11
	add $a0, $0, '\n'
	syscall
	syscall
	
	lw $v0, ($sp)
	add $sp, $sp, 4
	li $t0, 0
	jal stampaQuadrato
	
	li $v0, 10
	syscall