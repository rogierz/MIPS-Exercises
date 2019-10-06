		.data
		pari: .asciiz "Numero pari"
		dispari: .asciiz "Numero dispari"
		.text
		.globl main
		.ent main
main:
		li $v0, 5
		syscall
		andi $t0, $v0, 0x00000001
		li $t1, 0x00000001
		li $v0, 4
		la $a0, pari
		bne $t0, $t1, target
		la $a0, dispari
target:	syscall
		
end:	li $v0, 10
		syscall
		.end main