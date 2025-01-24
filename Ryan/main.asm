.text

main: 
	jal cenario
	addi $a0, $0, 16400
	jal boo
	
	jal moveDireitaRyan
	jal moveDireitaRyan
	jal moveDireitaRyan
	jal moveDireitaRyan
	
	
	
	
	
	addi $2, $0, 10
	syscall
