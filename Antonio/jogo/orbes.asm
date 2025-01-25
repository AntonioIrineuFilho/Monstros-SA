.data
.text
.globl orbe1
.globl orbe2
.globl orbe3
.globl orbe4
.globl orbe5



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
	lw $19, 2076($8) # endereco de memoria atual da unidade grafica de baixo do orbe
	beq $18, $19, verificador1
	
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
	lw $19, 2144($9) # endereco de memoria atual da unidade grafica de baixo do orbe
	beq $18, $19, verificador2
	sw $13, 2144($9)
	sw $13, 2148($9)
	sw $13, 2152($9)
	
	add $31, $0, $15	
	jr $31


#--------------------------------------------------------------------------------		
	

orbe3:
	addi $13, $0, 0x00439d # laterais do orbe
	addi $14, $0, 0x2e24bd # cruz do orbe
	
	add $15, $0, $31

	sw $13, 176($10)
	sw $13, 180($10)
	sw $13, 184($10)
	sw $13, 684($10)
	sw $13, 688($10)
	sw $14, 692($10)
	sw $13, 696($10)
	sw $13, 700($10)
	sw $13, 1196($10)
	sw $14, 1200($10)
	sw $14, 1204($10)
	sw $14, 1208($10)
	sw $13, 1212($10)
	sw $13, 1708($10)
	sw $13, 1712($10)
	sw $14, 1716($10)
	sw $13, 1720($10)
	sw $13, 1724($10)

	addi $18, $0, 0x5c5696 # cor do solo
	lw $19, 2224($10) # endereco de memoria atual da unidade grafica de baixo do orbe
	beq $18, $19, verificador3
	sw $13, 2224($10)
	sw $13, 2228($10)
	sw $13, 2232($10)
	
	add $31, $0, $15	
	jr $31
	

#--------------------------------------------------------------------------------		
	

orbe4:
	addi $13, $0, 0x00439d # laterais do orbe
	addi $14, $0, 0x2e24bd # cruz do orbe
	
	add $15, $0, $31
	
	sw $13, 264($11)
	sw $13, 268($11)
	sw $13, 272($11)
	sw $13, 772($11)
	sw $13, 776($11)
	sw $14, 780($11)
	sw $13, 784($11)
	sw $13, 788($11)
	sw $13, 1284($11)
	sw $14, 1288($11)
	sw $14, 1292($11)
	sw $14, 1296($11)
	sw $13, 1300($11)
	sw $13, 1796($11)
	sw $13, 1800($11)
	sw $14, 1804($11)
	sw $13, 1808($11)
	sw $13, 1812($11)

	addi $18, $0, 0x5c5696 # cor do solo
	lw $19, 2312($11) # endereco de memoria atual da unidade grafica de baixo do orbe
	beq $18, $19, verificador4
	sw $13, 2312($11)
	sw $13, 2316($11)
	sw $13, 2320($11)
	
	add $31, $0, $15	
	jr $31
	
#--------------------------------------------------------------------------------		
	

orbe5:
	addi $13, $0, 0x00439d # laterais do orbe
	addi $14, $0, 0x2e24bd # cruz do orbe
	
	add $15, $0, $31
	
	sw $13, 352($12)
	sw $13, 356($12)
	sw $13, 360($12)
	sw $13, 860($12)
	sw $13, 864($12)
	sw $14, 868($12)
	sw $13, 872($12)
	sw $13, 876($12)
	sw $13, 1372($12)
	sw $14, 1376($12)
	sw $14, 1380($12)
	sw $14, 1384($12)
	sw $13, 1388($12)
	sw $13, 1884($12)
	sw $13, 1888($12)
	sw $14, 1892($12)
	sw $13, 1896($12)
	sw $13, 1900($12)
	sw $13, 2400($12)
	sw $13, 2404($12)
	sw $13, 2408($12)

	addi $18, $0, 0x5c5696 # cor do solo
	lw $19, 2400($12) # endereco de memoria atual da unidade grafica de baixo do orbe
	beq $18, $19, verificador5
	sw $13, 2400($12)
	sw $13, 2404($12)
	sw $13, 2408($12)
	
	add $31, $0, $15	
	jr $31

