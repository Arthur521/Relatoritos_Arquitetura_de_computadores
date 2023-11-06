.data
	a: .word 6, 5

.text
	
	la $s1, a
	li $t0, 0
	lw $t1, 0($s1)
	
	#while(x <5)
	blt $t1, 5, if
	lw $t2, 4($s1)
	addi $t0, $t2, 10
	
	#then
	if:
		addi $t3, $t0, 2
		sw $t3, 0($s1)

fim: