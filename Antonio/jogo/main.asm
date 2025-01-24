.data
.text

main:
	jal cenario
	jal copiaCenario
	jal movOrbe

fim:
	addi $2, $0, 10
	syscall