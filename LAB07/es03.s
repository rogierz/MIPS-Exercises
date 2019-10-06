.data
.text
.globl main
.ent main

calcolaSuccessivo:
	addi $t1, 1
	beq $a0, 1, end
	andi $t0, $a0, 1
	move $t1, $a0
	li $t2, 3
	srl $t1, $t1, 1
	beq $t0, $0, end
	mul $t1, $a0, $t2
	addi $t1, 1
end:
	move $v0, $t1
	jr $ra
	
sequenzaDiCollatz:
	add $sp, $sp, -4
	sw $ra, ($sp)
	addi $s0, 1
for:	
	jal calcolaSuccessivo
	move $a0, $v0
	addi $s0, 1
	bne $v0, 1, for
	
	
	move $v0, $s0
	lw $ra, ($sp)
	add $sp, $sp, 4
	jr $ra
main:
	li $a0, 785
	jal sequenzaDiCollatz
	li $v0, 10
	syscall