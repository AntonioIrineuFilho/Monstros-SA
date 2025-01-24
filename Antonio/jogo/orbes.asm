.data
.text
.globl orbe1
.globl orbe2



orbe1:
	addi $13, $0, 0x00439d # laterais do orbe
	addi $14, $0, 0x2e24bd # cruz do orbe31
	add $15, $0, $31
#----------cria o orbe no canto superior esquerdo quando $8 = 0x1001--------------

	sw $13, 28($8)
	sw $13, 32($8)
	sw $13, 36($8)
	sw $13, 536($8)
	sw $13, 540($8)
	sw $14, 544($8)
	sw $13, 548($8)
	sw $13, 552($8)
	sw $13, 1048($8)
	sw $14, 1052($8)
	sw $14, 1056($8)
	sw $14, 1060($8)
	sw $13, 1064($8)
	sw $13, 1560($8)
	sw $13, 1564($8)
	sw $14, 1568($8)
	sw $13, 1572($8)
	sw $13, 1576($8)
	
	addi $18, $0, 0x5c5696 # cor do solo
	lw $19, 2076($8) # endereco de memoria atual da unidade gráfica de baixo do orbe
	beq $18, $19, colisaoOrbe
	
	add $31, $0, $15
	sw $13, 2076($8)
	sw $13, 2080($8)
	sw $13, 2084($8)
	
	add $31, $0, $15	
	jr $31
	
#--------------------------------------------------------------------------------		
	

orbe2:
	addi $13, $0, 0x00439d # laterais do orbe
	addi $14, $0, 0x2e24bd # cruz do orbe
	
	add $15, $0, $31

	sw $13, 96($9)
	sw $13, 100($9)
	sw $13, 104($9)
	sw $13, 604($9)
	sw $13, 608($9)
	sw $14, 612($9)
	sw $13, 616($9)
	sw $13, 620($9)
	sw $13, 1116($9)
	sw $14, 1120($9)
	sw $14, 1124($9)
	sw $14, 1128($9)
	sw $13, 1132($9)
	sw $13, 1628($9)
	sw $13, 1632($9)
	sw $14, 1636($9)
	sw $13, 1640($9)
	sw $13, 1644($9)
	addi $18, $0, 0x5c5696 # cor do solo
	lw $19, 2144($9) # endereco de memoria atual da unidade gráfica de baixo do orbe
	beq $18, $19, colisaoOrbe
	sw $13, 2144($9)
	sw $13, 2148($9)
	sw $13, 2152($9)
	
	add $31, $0, $15	
	jr $31