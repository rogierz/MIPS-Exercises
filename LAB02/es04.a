		.data
var: .half 255
		.text
		.globl main
		.ent main
main:
		lhu $t0, var
		li 	$t1, 0x00000001 #confronto per la and
		li  $t2, 0x10 #uso $t2 come counter, inizializzato a 16
		and $t3, $t3, $0 #in $t3 salvo il numero di 1
for: 	beq $t2, $0, endfor
		andi $t4, $t0, 0x00000001
		srl $t0, $t0, 1
		bne $t4, $t1, endif
		addi $t3, $t3, 1
endif:	addi $t2, $t2, -1
		j for
endfor:
		add $a0, $0, $t3
		 li $v0, 1
		 syscall
		 li $v0, 10
		 syscall
		 .end main
	
	
	
	