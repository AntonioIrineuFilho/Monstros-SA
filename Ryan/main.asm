.text

mainRyan: 

	#REGISTRADORES que n�o podem ser alterados:

	# $8 � usado temporariamente na fun��es de movimenta��o boo
	# $9 � usado temporariamente na fun��es de movimenta��o boo
	# $10 � usado na boo para guardar o endere�o de refer�ncia
	# $11 � usado para guardar $31 na fun��es de movimenta��o boo
	# $12 � usado para guardar a quantidade dos pulos - 32
	# $13 � usado temporiamente nas fun��es de movimenta��o alberto
	# $14 � usado temporiamente nas fun��es de movimenta��o alberto
	# $15 N�O PODE SER ALTERADO
	# $16 � usado na fun��o boo - temporariamente
	# $17 � usado na fun��o boo - temporariamente
	# $18 limite lateral esquerdo
	# $19 endere�o entrada keyboard
	# $20 espa�o
	# $21 letra A
	# $22 letra D
	# $23 entrada teclado
	# $24 usado para guardar $31 na moveCimaRyan e moveBaixo
	# $25 � sujado na fun��o pulo

	jal cenario
	addi $a0, $0, 16440
	jal boo
	addi $15, $0, 16760
	jal alberto
	
	jal startGame2
	
	

	
	addi $2, $0, 10
	syscall
