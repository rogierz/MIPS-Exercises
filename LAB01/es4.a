		.data
var:	.word 0x3FFFFF0
		.text
		.globl main
		.ent main
main:
		lw $t1, var
		sll $t0, $t1, 1
		li $t2, 40
		addu $a0, $t0, $t2
		li $v0, 1
		syscall
		li $v0, 10
		syscall
		
		
