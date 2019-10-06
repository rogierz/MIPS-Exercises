	.data
	opa: .word 2043
	opb: .word 5
tab: .word sum, subs, mol, divs
	.text
	.globl main
	.ent main
main:
	li $v0, 5
	syscall
	
	lw $t0, opa
	lw $t1, opb
	sll $v0, $v0, 2
	lw $t5, tab($v0)
	jr $t5
sum:
	add $s0, $t0, $t1
	j end
subs:sub $s0, $t0, $t1
	j end
mol: mul $s0, $t0, $t1
	j end
divs:div $s0, $t0, $t1
	j end
end:
	li $v0, 1
	add $a0, $s0, $0
	syscall
	li $v0, 10
	syscall
	
	
	