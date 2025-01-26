.text

main: 
	jal cenario
	addi $a0, $0, 16400
	jal boo
	addi $a1, $0, 15736
	jal alberto

	jal startGame2
	
	addi $2, $0, 10
	syscall
