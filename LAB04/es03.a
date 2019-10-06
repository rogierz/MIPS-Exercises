	.data
vect: .word 1, 2, 3, 4
another: .word 4, 3, 2, 1
prod: .space 64
	.text
	.globl main
	.ent main
main:
	li $s0, 0 # $s0 -> i |
	li $s1, 0 # $s1 -> j -> indice matrice
	
	li $t1, 0 # $t1 -> k -> indice vect
	li $t2, 0 # $t2 -> l -> indice another
	
			  # $s2 -> valore temporaneo vect
			  # $s3 -> valore temporaneo another
			  # $s4 -> valore temporaneo prod

for:
	beq $s0, 64, end
inner_for:
	beq $s1, 16, end_inner_for	
	lw $s2, vect($t1)
	lw $s3, another($t2)
	addi $t2, 4
	add $t0, $s1, $s0 #$t0 = 4*i+j -> $t0 indice temporaneo prod
	mul $s2, $s2, $s3
	sw $s2, prod($t0)
	
	addi $s1, 4
	j inner_for
end_inner_for:
	addi $t1, 4
	addi $s0, 16
	and $s1, $s1, $0
	and $t2, $t2, $0
	j for
end:
	li $v0, 10
	syscall


