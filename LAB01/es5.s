		.data
		.text
		.globl main
		.ent main
main:
		li $v0, 5
		syscall
		add $t0, $t0, $v0
		li $v0, 5
		syscall
		add $t1, $t1, $v0
		sub $t0, $t0, $t1
		add $t1, $t0, $t1
		sub $t0, $t1, $t0
		li $v0, 10
		syscall
		
	#	a = a - b -> a = 7
	#	b = a + b -> b = 10
	#	a = b - a -> a = 3