.data
	anni: .word 2008, 2008, 2008, 2008, 2008, 2008
	risultato: .space 6
	lunghezza: .byte 6
.text
.globl main
.ent main

main:
	la $a0, anni
	la $a1, risultato
	lbu $a2, lunghezza
	jal bisestile
	li $v0, 10
	syscall
	
isBisestiles: #calcolo standard // funziona
	li $t0, 100
	li $t1, 4
	li $t2, 400
	li $v0, 0
	move $t3, $a0
	
	div $t3, $t0
	mfhi $t4
	bne $t4, 0, elsecento
		div $t3, $t2
		mfhi $t4
		bne $t4, 0, elseqcento
			addi $v0, 1
			j endcento
		elseqcento:
			addi $v0, 0
			j endcento
	elsecento:
		div $t3, $t1
		mfhi $t4
		bne $t4, 0, elseq
			addi $v0, 1
			j endcento
		elseq:
			addi $v0, 0
			j endcento
	endcento:
	jr $ra


isBisestilens: #il calcolo e' corretto, algoritmo rivisitato
	li $t0, 100
	li $t1, 4
	li $v0, 0
	move $t2, $a0
	
	div $t2, $t0
	mflo $t2
	mfhi $t3
	
	beq $t3, 0, q
	move $t2, $a0

q:	and $t3, $t2, 4
	bne $t3, 0, end
	addi $v0, 1
end:	
	jr $ra
	
bisestile:
	sub $sp, $sp, 4
	sw $ra, ($sp)
	move $s0, $a0
	move $s1, $a1
	move $s2, $a2
	li $s3, 0
	
wh: beq $s3, $a2, endw
	lw $a0, ($s0)
	add $s0, $s0, 4
	jal isBisestiles
	sb $v0, ($s1)
	add $s1, $s1, 1
	addi $s3, 1
	j wh
endw:
	lw $ra, ($sp)
	add $sp, $sp, 4
	jr $ra