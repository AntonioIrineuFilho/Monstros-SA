.text

main: 
	jal cenario
	jal boo
	
	addi $2, $0, 10
	syscall
