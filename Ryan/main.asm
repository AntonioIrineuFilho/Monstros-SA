.text

mainRyan: 

	#REGISTRADORES que não podem ser alterados:

	# $8 é usado temporariamente na funções de movimentação boo
	# $9 é usado temporariamente na funções de movimentação boo
	# $10 é usado na boo para guardar o endereço de referência
	# $11 é usado para guardar $31 na funções de movimentação boo
	# $12 é usado para guardar a quantidade dos pulos - 32
	# $13 é usado temporiamente nas funções de movimentação alberto
	# $14 é usado temporiamente nas funções de movimentação alberto
	# $15 NÃO PODE SER ALTERADO
	# $16 é usado na função boo - temporariamente
	# $17 é usado na função boo - temporariamente
	# $18 limite lateral esquerdo
	# $19 endereço entrada keyboard
	# $20 espaço
	# $21 letra A
	# $22 letra D
	# $23 entrada teclado
	# $24 usado para guardar $31 na moveCimaRyan e moveBaixo
	# $25 é sujado na função pulo

	jal cenario
	addi $a0, $0, 16440
	jal boo
	addi $15, $0, 16760
	jal alberto
	
	jal startGame2
	
	

	
	addi $2, $0, 10
	syscall
