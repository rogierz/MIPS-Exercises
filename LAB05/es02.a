	.data
str: .asciiz "Inserisci una stringa palindroma: \n"
isp: .asciiz "\nLa stringa inserita e' palindroma.\n"
notp: .asciiz "\nLa stringa inserita non e' palindroma.\n"


	.text
	.globl main
	.ent main
main:
		la $a0, str
		li $v0, 4
		li $t1, '\n'
		syscall
		move $t0, $sp
do:
		li $v0, 12
		syscall
		beq $v0, $t1, end 
		subu $sp, $sp, 4
		sw $v0, ($sp)
		j do
end:

		la $a0, notp #carico la stringa -> non palindroma
		
		
check:
		subu $t0, $t0, 4
		lw $t1, ($t0)
		lw $t3, ($sp)
		addu $sp, $sp, 4
		bne $t1, $t3, stampa
		ble, $sp, $t0, check
		la $a0, isp
		
		
stampa:	li $v0, 4
		syscall
		
		li $v0, 10
		syscall