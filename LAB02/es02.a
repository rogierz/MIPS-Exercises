		.data
	a:  .space 4
	b:	.space 4
		.text
		.globl main
		.ent main
main:
		li $v0, 5
		syscall
		li $t1, 0xFFFFFF00
		and $t0, $v0, $t1 # A in $t0
		bne $t0, 0, errore
		
		li $v0, 5
		syscall
		and $t1, $v0, $t1 # B in $t1
		bne $t1, 0, errore
		
		#da completare










end:	li $v0, 10
		syscall
		.end main