.data
.text
.globl fim

menu:
	jal menuInicial
	addi $2, $0, 5
	syscall
	addi $8, $0, 1
	beq $2, $8, mainSully
	addi $8, $0, 2
	beq $2, $8, mainBoo
	addi $8, $0, 3
	beq $2, $8, mainMike
	j fim
mainSully:
	jal cenario
	jal copiaCenario
	lui $21, 0x1001
	jal sully
	jal movGeral
mainBoo:

mainMike:

fim:
	addi $2, $0, 10
	syscall
