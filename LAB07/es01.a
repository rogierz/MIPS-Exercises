.data
.text
.globl main
.ent main
somma:
	move $fp, $sp
	
	add $sp, $sp, -16
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	
	
	lw $t0, 0($fp)
	lw $s2, 4($fp)
	add $fp, $fp, 8
	
	add $v0, $s2, $t0
	
	lw $s3, 12($sp)
	lw $s2, 8($sp)
	lw $s1, 4($sp)
	lw $s0, 0($sp)
	add $sp, $sp, 16
	jr $ra
	
main:
	addi $t0, 15
	addi $t1, 16
	addi $t2, 17
	addi $t3, 18
	addi $s0, 223
	addi $s1, 224
	addi $s2, 225
	addi $s3, 226
	
	add $sp, $sp, -8
	sw $t0, ($sp)
	sw $s0, 4($sp)
	jal somma
	move $t4, $v0
	
	li $v0, 10
	syscall