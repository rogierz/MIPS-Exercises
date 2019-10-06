		.data
op1:	.byte 150 #150 in ca2 su 1 byte -> -106
op2:	.byte 100
		.text
		.globl main
		.ent main
main:	
		lbu $t0, op1 #lbu così non vado in overflow
		lb $t1, op2
		add $t0, $t0, $t1
		add $a0, $0, $t0
		li $v0, 1
		syscall
		li $v0, 10
		syscall
		.end main