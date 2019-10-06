.data
str: .asciiz "Inserisci una frase: "
.text
.globl main
.ent main

toUpper:
	add $v0, $a0, -32
	jr $ra
main:
	la $a0, str
	li $v0, 4
	syscall
	li $t0, '\n'
	move $t1, $sp
	move $t2, $sp
doone:
	li $v0, 12
	syscall
	add $sp, $sp, -4
	sw $v0, ($sp)
	bne $v0, $t0, doone
	
	add $t1, $t1, -4
dotwo:
	lw $a0, ($t1)
	jal toUpper
	add $t1, $t1, -4
	move $a0, $v0
	li $v0, 11
	syscall
	bne $t1, $sp, dotwo
	
	li $v0, 10
	syscall