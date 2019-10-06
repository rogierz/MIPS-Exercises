.data
DIM = 5
vett: .space DIM

.text
.globl main

main: and $t3, $0, $0 #index

lettura: 	li $v0, 12 #read one character
			syscall
			sb $v0, vett($t3)
			add $t3, $t3, 1
			bne $t3, 5, lettura
			
			li $a0, 10
			li $v0, 11
			syscall
			
scrittura: 	add $t3, $t3, -1 #update index
			li $v0, 11
			lb $a0, vett($t3)
			syscall
			bne $t3, 0, scrittura
		
			li $v0, 10
			syscall