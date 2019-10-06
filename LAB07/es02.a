.data
.text
.globl main
.ent main

calcolaSuccssivo:
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
main:
	li $a0, 5
	jal calcolaSuccssivo
	li $v0, 10
	syscall