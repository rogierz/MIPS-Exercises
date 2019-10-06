	.data
eq: .asciiz "Inserisci i coefficenti nella forma ax^2 + bx + c:\n"
okre: .asciiz "L'equazione presenta soluzioni reali"
nore: .asciiz "L'equazione non presenta soluzioni reali"
	.text
	.globl main
	.ent main
main:
	la $a0, eq
	li $v0, 4
	syscall
	
	#read
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 5
	syscall
	move $t2, $v0
	
	mul $t1, $t1, $t1
	mul $t3, $t0, $2
	mul $t3, $t3, 4
	sub $t3, $t1, $t3
	
	la $a0, nore
	slt $t0, $t3, $0
	bne $t0, $0, stampa
	la $a0, okre
	
stampa: li $v0, 4
		syscall
		
		li $v0, 10
		syscall
	