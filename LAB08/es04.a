	DIM = 5
	.data
	vet1: .word 56, 12, 98, 129, 58
	vet2: .word 1, 0, 245, 129, 12
	risultato: .space DIM
	.text
	.globl main
	.ent main
main:
	la $a0, vet1
	la $a1, vet2
	la $a2, risultato
	li $a3, DIM
	jal CalcolaDistanzaH
	li $v0, 10
	syscall
	.end main

	CalcolaDistanzaH:
	subu $sp, 4
	sw $ra, ($sp)

while:
	beq $t0, $a3, endw
	subu $sp, 20
	sw $a0, ($sp)
	sw $a1, 4($sp)
	sw $a2, 8($sp)
	sw $a3, 12($sp)
	sw $t0, 16($sp)
	
	lw $a0, ($a0)
	lw $a1, ($a1)
	li $a2, 16
	jal calcolaBit
	
	lw $a0, ($sp)
	lw $a1, 4($sp)
	lw $a2, 8($sp)
	lw $a3, 12($sp)
	lw $t0, 16($sp)
	addi $sp, 20
	
	sw $v0, ($a2)
	addi $a0, 4
	addi $a1, 4
	addi $a2, 4
	addi $t0, 1
	j while
endw:	
	lw $ra, ($sp)
	addi $sp, 4
	jr $ra

calcolaBit:
	li $t0, 0
	li $v0, 0
lwhile:
	beq $t0, $a2, endlw
	beq $a1, $a0, endlw
	and $t2, $a0, 1
	and $t3, $a1, 1
if: beq $t2, $t3, endif
	addi $v0, 1
endif:
	srl $a0, $a0, 1
	srl $a1, $a1, 1
	addi $t0, 1
	j lwhile
endlw:
	jr $ra
