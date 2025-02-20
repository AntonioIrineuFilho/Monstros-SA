.text
.globl alberto

alberto:

	addi $sp, $sp, -12
	sw $15, 0($sp)
	sw $12, 4($sp)
	sw $16, 8($sp)
	
	lui $12, 0x1001
	add $12, $12, $15 #Posição atual 
	
	
	
	addi $14, $0, 0xf58014 #corpo
	addi $15, $0, 0xffffff #branco
	addi $16, $0, 0xfcc7b0
	
	# primeira linha
	lw $8, 540($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $0, 540($12)
	
	lw $8, 584($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $0, 584($12)
	#segunda linha
	lw $8, 1052($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $0, 1052($12)
	
	lw $8, 1064($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 1064($12)
	
	lw $8, 1068($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 1068($12)
	
	lw $8, 1068($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 1072($12)
	
	lw $8, 1076($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 1076($12)
	
	lw $8, 1080($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 1080($12)
	
	lw $8, 1084($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 1084($12)
	
	lw $8, 1096($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $0, 1096($12)
	# 3
	lw $8, 1564($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $0, 1564($12)
	sw $14, 1568($12)
	sw $14, 1572($12)
	sw $14, 1576($12)
	sw $14, 1580($12)
	sw $14, 1584($12)
	sw $14, 1588($12)
	sw $14, 1592($12)
	sw $14, 1596($12)
	sw $14, 1600($12)
	sw $14, 1604($12)
	lw $8, 1608($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $0, 1608($12)
	# 4
	lw $8, 2076($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 2076($12)
	sw $14, 2080($12)
	sw $14, 2084($12)
	sw $14, 2088($12)
	sw $14, 2092($12)
	sw $14, 2096($12)
	sw $14, 2100($12)
	sw $14, 2104($12)
	sw $14, 2108($12)
	sw $14, 2112($12)
	sw $14, 2116($12)
	lw $8, 2120($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 2120($12)
	# 5
	lw $8, 2584($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 2584($12)
	sw $14, 2588($12)
	sw $14, 2592($12)
	sw $15, 2596($12)
	sw $15, 2600($12)
	sw $14, 2604($12)
	sw $14, 2608($12)
	sw $14, 2612($12)
	sw $14, 2616($12)
	sw $15, 2620($12)
	sw $15, 2624($12)
	sw $14, 2628($12)
	sw $14, 2632($12)
	lw $8, 2636($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 2636($12)
	# 6
	lw $8, 3092($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 3092($12)
	sw $14, 3096($12)
	sw $14, 3100($12)
	sw $15, 3104($12)
	sw $0, 3108($12)
	sw $0, 3112($12)
	sw $15, 3116($12)
	sw $14, 3120($12)
	sw $14, 3124($12)
	sw $15, 3128($12)
	sw $0, 3132($12)
	sw $0, 3136($12)
	sw $15, 3140($12)
	sw $14, 3144($12)
	sw $14, 3148($12)
	lw $8, 3152($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 3152($12)
	#7
	lw $8, 3604($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 3604($12)
	sw $14, 3608($12)
	sw $14, 3612($12)
	sw $15, 3616($12)
	sw $0, 3620($12)
	sw $0, 3624($12)
	sw $15, 3628($12)
	sw $14, 3632($12)
	sw $14, 3636($12)
	sw $15, 3640($12)
	sw $0, 3644($12)
	sw $0, 3648($12)
	sw $15, 3652($12)
	sw $14, 3656($12)
	sw $14, 3660($12)
	lw $8, 3664($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 3664($12)
	#8
	lw $8, 4116($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 4116($12)
	sw $14, 4120($12)
	sw $14, 4124($12)
	sw $15, 4128($12)
	sw $0, 4132($12)
	sw $0, 4136($12)
	sw $15, 4140($12)
	sw $14, 4144($12)
	sw $14, 4148($12)
	sw $15, 4152($12)
	sw $0, 4156($12)
	sw $0, 4160($12)
	sw $15, 4164($12)
	sw $14, 4168($12)
	sw $14, 4172($12)
	lw $8, 4176($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 4176($12)
	#9
	lw $8, 4628($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 4628($12)
	sw $14, 4632($12)
	sw $14, 4636($12)
	sw $14, 4640($12)
	sw $15, 4644($12)
	sw $15, 4648($12)
	sw $14, 4652($12)
	sw $14, 4656($12)
	sw $14, 4660($12)
	sw $14, 4664($12)
	sw $15, 4668($12)
	sw $15, 4672($12)
	sw $14, 4676($12)
	sw $14, 4680($12)
	sw $14, 4684($12)
	lw $8, 4688($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 4688($12)
	#10
	lw $8, 5140($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 5140($12)
	sw $14, 5144($12)
	sw $14, 5148($12)
	sw $14, 5152($12)
	sw $14, 5156($12)
	sw $14, 5160($12)
	sw $14, 5164($12)
	sw $14, 5168($12)
	sw $14, 5172($12)
	sw $14, 5176($12)
	sw $14, 5180($12)
	sw $14, 5184($12)
	sw $14, 5188($12)
	sw $14, 5192($12)
	sw $14, 5196($12)
	lw $8, 5200($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 5200($12)
	#11
	lw $8, 5648($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 5648($12)
	sw $14, 5652($12)
	sw $14, 5656($12)
	sw $14, 5660($12)
sw $14, 5664($12)
sw $14, 5668($12)
sw $14, 5672($12)
sw $14, 5676($12)
sw $14, 5680($12)
sw $14, 5684($12)
sw $14, 5688($12)
sw $14, 5692($12)
sw $14, 5696($12)
sw $14, 5700($12)
sw $14, 5704($12)
sw $14, 5708($12)
sw $14, 5712($12)
lw $8, 5716($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 5716($12)
	#12
	lw $8, 6156($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 6156($12)
	sw $14, 6160($12)
sw $14, 6164($12)
sw $14, 6168($12)
sw $14, 6172($12)
sw $14, 6176($12)
sw $14, 6180($12)
sw $14, 6184($12)
sw $0, 6188($12)
sw $0, 6192($12)
sw $0, 6196($12)
sw $0, 6200($12)
sw $14, 6204($12)
sw $14, 6208($12)
sw $14, 6212($12)
sw $14, 6216($12)
sw $14, 6220($12)
sw $14, 6224($12)
sw $14, 6228($12)
lw $8, 6232($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 6232($12)
	#13
	lw $8, 6664($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 6664($12)
	sw $14, 6668($12) 
sw $14, 6672($12)
sw $14, 6676($12)
sw $14, 6680($12)
sw $14, 6684($12)
sw $14, 6688($12)
sw $14, 6692($12)
sw $14, 6696($12)
sw $0, 6700($12)
sw $0, 6704($12)
sw $0, 6708($12)
sw $0, 6712($12)
sw $14, 6716($12)
sw $14, 6720($12)
sw $14, 6724($12)
sw $14, 6728($12)
sw $14, 6732($12)
sw $14, 6736($12)
sw $14, 6740($12)
sw $14, 6744($12)
lw $8, 6748($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 6748($12)
	#14
	lw $8, 7172($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
	sw $14, 7172($12) 
sw $14, 7176($12) 
sw $14, 7180($12) 
sw $14, 7184($12)
sw $14, 7188($12)
sw $14, 7192($12)
sw $14, 7196($12)
sw $14, 7200($12)
sw $14, 7204($12)
sw $14, 7208($12)
sw $14, 7212($12)
sw $14, 7216($12)
sw $14, 7220($12)
sw $14, 7224($12)
sw $14, 7228($12)
sw $14, 7232($12)
sw $14, 7236($12)
sw $14, 7240($12)
sw $14, 7244($12)
sw $14, 7248($12)
sw $14, 7252($12)
sw $14, 7256($12)
sw $14, 7260($12)
lw $8, 7264($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 7264($12)
#15
lw $8, 7684($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 7684($12) 
sw $14, 7688($12) 
sw $14, 7692($12) 

sw $14, 7700($12)
sw $14, 7704($12)
sw $14, 7708($12)
sw $14, 7712($12)
sw $14, 7716($12)
sw $14, 7720($12)
sw $14, 7724($12)
sw $14, 7728($12)
sw $14, 7732($12)
sw $14, 7736($12)
sw $14, 7740($12)
sw $14, 7744($12)
sw $14, 7748($12)
sw $14, 7752($12)
sw $14, 7756($12)
sw $14, 7760($12)

sw $14, 7768($12)
sw $14, 7772($12)
lw $8, 7776($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 7776($12)
#16
lw $8, 8196($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 8196($12) 
sw $14, 8200($12) 

sw $14, 8216($12)
sw $14, 8220($12)
sw $14, 8224($12)
sw $14, 8228($12)
sw $14, 8232($12)
sw $14, 8236($12)
sw $14, 8240($12)
sw $14, 8244($12)
sw $14, 8248($12)
sw $14, 8252($12)
sw $14, 8256($12)
sw $14, 8260($12)
sw $14, 8264($12)
sw $14, 8268($12)

sw $14, 8284($12)
lw $8, 8288($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 8288($12)
#17
lw $8, 8708($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 8708($12)  # 8196 + 512
sw $14, 8712($12)  # 8200 + 512
sw $14, 8732($12)  # 8220 + 512
sw $14, 8736($12)  # 8224 + 512
sw $14, 8740($12)  # 8228 + 512
sw $14, 8744($12)  # 8232 + 512
sw $14, 8748($12)  # 8236 + 512
sw $14, 8752($12)  # 8240 + 512
sw $14, 8756($12)  # 8244 + 512
sw $14, 8760($12)  # 8248 + 512
sw $14, 8764($12)  # 8252 + 512
sw $14, 8768($12)  # 8256 + 512
sw $14, 8772($12)  # 8260 + 512
sw $14, 8776($12)  # 8264 + 512
sw $14, 8796($12)  # 8284 + 512
lw $8, 8800($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 8800($12)  # 8288 + 512
#18
lw $8, 9220($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 9220($12)
sw $14, 9224($12)
sw $14, 9228($12)
sw $14, 9244($12)
sw $14, 9248($12)
sw $14, 9252($12)
sw $14, 9256($12)
sw $14, 9260($12)
sw $14, 9264($12)
sw $14, 9268($12)
sw $14, 9272($12)
sw $14, 9276($12)
sw $14, 9280($12)
sw $14, 9284($12)
sw $14, 9288($12)
sw $14, 9304($12)
sw $14, 9308($12)
lw $8, 9312($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 9312($12)
#19
lw $8, 9732($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 9732($12)
sw $14, 9736($12)

sw $14, 9756($12)
sw $14, 9760($12)
sw $14, 9764($12)

sw $14, 9792($12)
sw $14, 9796($12)
sw $14, 9800($12)

sw $14, 9820($12)
lw $8, 9824($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 9824($12)
#20
lw $8, 10244($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 10244($12)
sw $14, 10248($12)

sw $14, 10268($12)
sw $14, 10272($12)
sw $14, 10276($12)

sw $14, 10304($12)
sw $14, 10308($12)
sw $14, 10312($12)

sw $14, 10332($12)
lw $8, 10336($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 10336($12)
#21
lw $8, 10756($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 10756($12)
sw $14, 10760($12)
sw $14, 10764($12)

sw $14, 10780($12)
sw $14, 10784($12)
sw $14, 10788($12)

sw $14, 10816($12)
sw $14, 10820($12)
sw $14, 10824($12)

sw $14, 10840($12)
sw $14, 10844($12)
lw $8, 10848($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 10848($12)
#22
lw $8, 11292($12)
	beq $8, $0, gameOverRyan
	beq $8, $16, gameOverRyan
	beq $8, $15, gameOverRyan
sw $14, 11292($12)
sw $14, 11296($12)
sw $14, 11300($12)

sw $14, 11328($12)
sw $14, 11332($12)
sw $14, 11336($12)
#23
sw $14, 11804($12)
sw $14, 11808($12)
sw $14, 11812($12)

sw $14, 11840($12)
sw $14, 11844($12)
sw $14, 11848($12)
#24
sw $14, 12312($12)
sw $14, 12316($12)
sw $14, 12320($12)
sw $14, 12324($12)

sw $14, 12352($12)
sw $14, 12356($12)
sw $14, 12360($12)
sw $14, 12364($12)

lw $15, 0($sp)
lw $12, 4($sp)
lw $16, 8($sp)
addi $sp, $sp, 12

jr $31
