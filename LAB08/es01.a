.data
ora_in: .byte 12, 47
ora_out: .byte 18, 14
x: .byte 1
y: .byte 40
.text
.globl main
.ent main

main:
	la $a0, ora_in
	la $a1, ora_out
	lbu $a2, x
	lbu $a3, y
	jal costoParcheggio
	li $v0, 10
	syscall
.end main


costoParcheggio:
	li $t0, 60
	lbu $t1, 0($a0)
	lbu $t2, 1($a0)
	mult $t1, $t0
	mflo $t1
	add $t1, $t1, $t2 #ora_in
	
	lbu $t2, 0($a1)
	lbu $t3, 1($a1)
	mult $t2, $t0
	mflo $t2
	add $t2, $t2, $t3 #ora_out
	
	sub $t1, $t2, $t1 #Dora
	
	div $t1, $a3
	mflo $t2 #q
	mfhi $t3 #r
	mult $t2, $a2
	mflo $t2
	beq $t3, $0, fine
	add $t2, $t2, $a2
	
	
fine:
	move $v0, $t2
	jr $ra

