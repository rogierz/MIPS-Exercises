.data
str_orig: .asciiz "% nella citta' dolente, % nell'eterno dolore , % tra la perduta gente"
str_sost: .asciiz "per me si va"
str_new: .space 200
.text
.globl main
.ent main

main:
	la $a0, str_orig
	la $a1, str_sost
	la $a2, str_new
	jal proceduraSostituisci
	li $v0, 10
	syscall
	
proceduraSostituisci:
	lbu $t0, ($a0)
	move $t1, $a1
	li $t2, '%'
	li $t3, 0x00
	lbu $t4, ($t1)
	li $v0, 0
while:
	beq $t0, $t3, endw
		bne $t0, $t2, avanti
		copio:
			beq $t4, $t3, ricopia
				lbu $t4, ($t1)
				sb $t4, ($a2)
				addi $a2, 1
				addi $t1, 1
				addi $v0, 1
				j copio
			ricopia:
			move $t1, $a1
			lbu $t4, ($t1)
	avanti:
		beq $t0, $t2, preend
		sb $t0, ($a2)
		addi $v0, 1
		addi $a2, 1
preend:
	addi $a0, 1
	lbu $t0, ($a0)
	j while
endw:
	sb $t3, ($a2)
	jr $ra