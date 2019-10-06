	.data
tavola:
	.space 400
	.text
	.globl main
	.ent main
main:
	li $s0, 0 #i
	li $s1, 0 #j
	
	li $t0, 0 #tmp_i
	li $t1, 0 #tmp_j
	li $t2, 0 # $t2 = $t0 + $t1
			  #$t3 = ($s0+1) * ($s1+1)
for:beq $s0, 10, end_for	
	inner_for: beq $s1, 10, end_inner_for
		mul $t0, $s0, 40
		mul $t1, $s1, 4
		add $t2, $t0, $t1
		addi $t1, 4
		
		addi $s0, 1
		addi $s1, 1
		mul $t3, $s0, $s1
		addi $s0, -1
		
		sw $t3, tavola($t2)
		
		j inner_for
	end_inner_for:
	and $s1, $s1, $0
	addi $s0, 1
	j for
end_for:
	li $v0, 10
	syscall