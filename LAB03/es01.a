		.data
		num: .asciiz "\nHai inserito un numero\n"
		nonum: .asciiz "\nNon hai inserito un numero\n"
		.text
		.globl main
		.ent main
main:
		li $s0, '\n'
		li $s1, '0'
		li $s2, '9'
		addi $s2, 1
		li $t0, 1
while:  bne $t0, 1, end_while
		li $v0, 12
		syscall
		slt $t0, $s1, $v0
		slt $t1, $v0, $s2
		and $t0, $t0, $t1
		beq $v0, '\n', end_while
		j while
end_while:
		la $a0, nonum
		bne $v0, '\n', end
		la $a0, num
end:	li $v0, 4
		syscall
		li $v0, 10
		syscall
		.end main