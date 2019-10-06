.data
error: .asciiz "Non e' un numero\n"
.text
.globl main
.ent main
main:
	li $s0, '0'
	li $s1, '9'
	
	li $s2, 10 #costante
	li $t0, 0
loop:
	li $v0, 12
	syscall
	#controllo
	beq $v0, '\n', end_loop
	blt $v0, $s0, notANumber
	bgt $v0, $s1, notANumber
	
	#conversione e check overflow
	multu $t0, $s2
	mfhi $t0,
	bne $t0, $0, overflow
	mflo $t0
	sub $v0, $v0, $s0
	add $v0, $t0, $v0
	bltu $v0, $t0, overflow
	move $t0, $v0
	j loop
end_loop:
	move $a0, $t0
	li $v0, 1
	syscall
	j end
notANumber:
	la $v0, error
	j print
overflow:
	la $v0, over
print:
	li $v0, 4
	syscall
end:li $v0, 10
	syscall