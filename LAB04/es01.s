	.data
myarray: .space 80
	.text
	.globl main
	.ent main
main:
	li $t0, 1
	li $t1, 1
	and $s0, $0, $0
	sw $t0, myarray($s0)
	addi $s0, $s0, 4
	sw $t0, myarray($s0)
	
for:beq $s0, 76, end_for
	addi $s0, $s0, 4
	add $t2, $t1, $t0
	sw $t2, myarray($s0)
	add $t0, $t1, $0
	add $t1, $t2, $0
	j for

end_for:	
	li $v0, 10
	syscall
	.end main