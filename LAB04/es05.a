	.data
tab: .word 154, 123, 109, 86, 4, 0, 412, -23, -231, 9, 50, 0, 123 -24, 12, 55, -45, 0, 0, 0, 0, 0, 0, 0
	.text
	.globl main
	.ent main
main:
	
	li $t0, 0
	li $s0, 0
	li $s1, 0
for:
	beq $s1, 72, end
	inner_for:
		beq $s0, 5, inner_end	
		lw $t1, tab($s1)
		add $t0, $t0, $t1
		addi $s0, 1
		addi $s1, 4
		j inner_for
	inner_end:
	sw $t0, tab($s1)
	addi $s0, 1
	addi $s1, 4
	li $t0, 0
	li $s0, 0
	j for
end:
	li $t0, 0
	li $s0, 0
	li $s1, 0
ford:
	beq $s1, 24, end_ford
	inner_ford:
	    beq $s0, 3, inner_endd
		lw $t1, tab($s1)
		add $t0, $t0, $t1
		addi $s0, 1
		addi $s1, 24
		j inner_ford
	inner_endd:
	sw $t0, tab($s1)
	addi $s1, -68
	li $t0, 0
	li $s0, 0
	j ford
end_ford:
	li $v0, 10
	syscall