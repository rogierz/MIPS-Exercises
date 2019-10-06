		.data
	wzero: .word 24
	wuno: .word 72
	wdue: .word 1
		.text
		.globl main
		.ent main
main:
			lw $t0, wzero  #$t0 = wzero
			lw $t1, wuno	#$t1 = wuno
			lw $t2, wdue # $$t2 = wdue t4 come flag
			slt $t4, $t0, $t1
			bne $t4, $0, firstj
			sub $t0, $t0, $t1
			add $t1, $t0, $t1
			sub $t0, $t1, $t0
firstj:		slt $t4, $t0, $t2
			bne $t4, $0, secondj
			sub $t0, $t0, $t2
			add $t2, $t0, $t2
			sub $t0, $t2, $t0
secondj:	slt $t4, $t1, $t2
			bne $t4, $0, thirdj
			sub $t1, $t1, $t2
			add $t2, $t1, $t2
			sub $t1, $t2, $t1
thirdj:		li $v0, 10
			syscall
			.end main
			
			
	#	a = a - b -> a = 7
	#	b = a + b -> b = 10
	#	a = b - a -> a = 3