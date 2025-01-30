.data
.text
.globl main
.globl fim

main:
	jal cenario
	jal copiaCenario
	jal sully
fim:
	addi $2, $0, 10
	syscall
