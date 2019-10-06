.data
DIM = 3
.text
.globl main
.ent main
main:
	
loop:
	li $v0, 5
	syscall
	add $t0, $t0, $v0
	addi $t1, 1
	bne $t1, DIM, loop
	div $t0, $t0, DIM
	li $v0, 1
	move $a0, $t0
	syscall
	li $v0, 10
	syscall