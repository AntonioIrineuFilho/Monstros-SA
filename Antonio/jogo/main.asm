.data
.text
.globl main
.globl fim
.globl testeMov

main:
	jal cenario
	jal copiaCenario
	lui $21, 0x1001
testeMov:
	jal sully
	jal recuperaCenarioSully
	jal movSully
	j testeMov
fim:
	addi $2, $0, 10
	syscall
