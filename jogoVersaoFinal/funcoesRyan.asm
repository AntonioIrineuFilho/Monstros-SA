.text
.globl moveDireitaRyan
.globl moveEsquerdaRyan
.globl timer
.globl startGame2
.globl moveCimaRyan
.globl moveBaixoRyan
.globl puloRyan

#18, lateral esquerda
#17, 
#16, 
#15, posi��o alberto

# ====================================================================
# In�cio do Jogo � startGame2
# ====================================================================
startGame2:
	
		
	addi $20, $0, ' '
	addi $21, $0, 'a'
	addi $22, $0, 'd'
	lui $19, 0xffff
	
	
	addi $18, $0, 16384 # LIMITE lat esquerda
	
	addi $a1, $0, 200
loopGameRyan:
	addi $13, $0, 16820 # LIMITE lat direita - boo	
	beq $a1, $0, mainMike

	jal moveGeralAlberto
	jal timer 
	jal timer
	jal timer

	addi $a1, $a1, -1
	
	lw $23, 0($19)
	beq $23, $0, fimLoopGame
	lw $23, 4($19)

	beq $23, $20, callPulo
	beq $a0, $18, limiteEsquerdo
	beq $23, $21, callEsquerda
limiteEsquerdo:	
	beq $a0, $13, limiteDireito			
	beq $23, $22, callDireita
limiteDireito:	
	j loopGameRyan

callPulo:
	jal puloRyan
	j fimLoopGame
callEsquerda: 
	jal moveEsquerdaRyan
	j fimLoopGame
callDireita:
	jal moveDireitaRyan
	j fimLoopGame

fimLoopGame: j loopGameRyan

# reg USADOS: $11, 8, 9
moveDireitaRyan:

	add $11, $0, $31
	lui $8, 0x1001
	add $8, $8, $a0
	
	
	lw $9, 33308($8)
	sw $9, 540($8)

	lw $9, 33800($8)
	sw $9, 1032($8)

	lw $9, 34308($8)
	sw $9, 1540($8)

	lw $9, 34820($8)
	sw $9, 2052($8)

	lw $9, 35332($8)
	sw $9, 2564($8)

	lw $9, 35844($8)
	sw $9, 3076($8)

	lw $9, 36356($8)
	sw $9, 3588($8)

	lw $9, 36876($8)
	sw $9, 4108($8)

	lw $9, 37388($8)
	sw $9, 4620($8)

	lw $9, 37904($8)
	sw $9, 5136($8)

	lw $9, 38420($8)
	sw $9, 5652($8)

	lw $9, 38936($8)
	sw $9, 6168($8)

	lw $9, 39448($8)
	sw $9, 6680($8)

	lw $9, 39956($8)
	sw $9, 7188($8)
	
	lw $9, 40464($8)
	sw $9, 7696($8)
	
	lw $9, 40976($8)
	sw $9, 8208($8)
	
	lw $9, 41488($8)
	sw $9, 8720($8)
	
	lw $9, 42000($8)
	sw $9, 9232($8)
	
	lw $9, 42520($8)
	sw $9, 9752($8)
	
	lw $9, 43028($8)
	sw $9, 10260($8)
	
	lw $9, 43548($8)
	sw $9, 10780($8)
	
	lw $9, 43564($8)
	sw $9, 10796($8)
	
	lw $9, 44076($8)
	sw $9, 11308($8)
	
	lw $9, 44060($8)
	sw $9, 11292($8)
	
	lw $9, 35344($8)
	sw $9, 2576($8)
	
	lw $9, 35856($8)
	sw $9, 3088($8)
	
	lw $9, 36368($8)
	sw $9, 3600($8)
	
	lw $9, 36424($8)
	sw $9, 3656($8)
	
	lw $9, 35908($8)
	sw $9, 3140($8)
	
	lw $9, 35428($8)
	sw $9, 2628($8)
	
	addi $a0, $a0, 4

	jal boo
	
	add $31, $0, $11
	addi $8, $0, 0
	addi $9, $0, 0
	jr $31
	
######MOVE ESQUERDA30
moveEsquerdaRyan:
	
	add $11, $0, $31
	lui $8, 0x1001
	add $8, $8, $a0
	
	
	lw $9, 33328($8)
	sw $9, 560($8)

	lw $9, 33860($8)
	sw $9, 1092($8)

	lw $9, 34376($8)
	sw $9, 1608($8)

	lw $9, 34888($8)
	sw $9, 2120($8)

	lw $9, 35336($8)
	sw $9, 2568($8)

lw $9, 35388($8)
sw $9, 2620($8)

lw $9, 35400($8)
sw $9, 2632($8)

lw $9, 35848($8)
sw $9, 3080($8)

lw $9, 35900($8)
sw $9, 3132($8)

lw $9, 35912($8)
sw $9, 3144($8)

lw $9, 36360($8)
sw $9, 3588($8)

lw $9, 36412($8)
sw $9, 3644($8)

lw $9, 36424($8)
sw $9, 3656($8)

lw $9, 36928($8)
sw $9, 4160($8)

lw $9, 37440($8)
sw $9, 4672($8)

lw $9, 37948($8)
sw $9, 5180($8)

lw $9, 38456($8)
sw $9, 5688($8)

lw $9, 38964($8)
sw $9, 6196($8)

lw $9, 39476($8)
sw $9, 6708($8)

lw $9, 39992($8)
sw $9, 7224($8)

lw $9, 40508($8)
sw $9, 7740($8)

lw $9, 41020($8)
sw $9, 8252($8)

lw $9, 41532($8)
sw $9, 8764($8)

lw $9, 42044($8)
sw $9, 9276($8)

lw $9, 42548($8)
sw $9, 9780($8)

lw $9, 43060($8)
sw $9, 10292($8)

lw $9, 43552($8)
sw $9, 10784($8)

lw $9, 43568($8)
sw $9, 10800($8)

lw $9, 44064($8)
sw $9, 11296($8)

lw $9, 44080($8)
sw $9, 11312($8)

	addi $a0, $a0, -4
	
	jal boo
	add $31, $0, $11
	addi $8, $0, 0
	addi $9, $0, 0
	jr $31
	
########################
moveCimaRyan:

	add $24, $0, $31
	lui $8, 0x1001
	add $8, $8, $a0
	
	lw $9, 36356($8)   # y = 3588 + 32768
sw $9, 3588($8)    # x = 3588

lw $9, 35848($8)   # y = 3080 + 32768
sw $9, 3080($8)    # x = 3080

lw $9, 34828($8)   # y = 2060 + 32768
sw $9, 2060($8)    # x = 2060

lw $9, 34880($8)   # y = 2112 + 32768
sw $9, 2112($8)    # x = 2112

lw $9, 35908($8)   # y = 3140 + 32768
sw $9, 3140($8)    # x = 3140

lw $9, 36424($8)   # y = 3656 + 32768
sw $9, 3656($8)    # x = 3656

lw $9, 37388($8)   # y = 4620 + 32768
sw $9, 4620($8)    # x = 4620

lw $9, 37440($8)   # y = 4672 + 32768
sw $9, 4672($8)    # x = 4672

lw $9, 37904($8)   # y = 5136 + 32768
sw $9, 5136($8)    # x = 5136

lw $9, 37948($8)   # y = 5180 + 32768
sw $9, 5180($8)    # x = 5180

lw $9, 38420($8)   # y = 5652 + 32768
sw $9, 5652($8)    # x = 5652

lw $9, 38456($8)   # y = 5688 + 32768
sw $9, 5688($8)    # x = 5688

lw $9, 42000($8)   # y = 9232 + 32768
sw $9, 9232($8)    # x = 9232

lw $9, 42004($8)   # y = 9236 + 32768
sw $9, 9236($8)    # x = 9236

lw $9, 42040($8)   # y = 9272 + 32768
sw $9, 9272($8)    # x = 9272

lw $9, 42044($8)   # y = 9276 + 32768
sw $9, 9276($8)    # x = 9276

lw $9, 43028($8)   # y = 10260 + 32768
sw $9, 10260($8)   # x = 10260

lw $9, 43032($8)   # y = 10264 + 32768
sw $9, 10264($8)   # x = 10264

lw $9, 43044($8)   # y = 10276 + 32768
sw $9, 10276($8)   # x = 10276

lw $9, 43048($8)   # y = 10280 + 32768
sw $9, 10280($8)   # x = 10280

lw $9, 43060($8)   # y = 10292 + 32768
sw $9, 10292($8)   # x = 10292

lw $9, 44060($8)   # y = 11292 + 32768
sw $9, 11292($8)   # x = 11292

lw $9, 44064($8)   # y = 11296 + 32768
sw $9, 11296($8)   # x = 11296

lw $9, 44076($8)   # y = 11308 + 32768
sw $9, 11308($8)   # x = 11308

lw $9, 44080($8)   # y = 11312 + 32768
sw $9, 11312($8)   # x = 11312
	
	addi $a0, $a0, -512
	
	jal boo
	
	add $31, $0, $24
	addi $8, $0, 0
	addi $9, $0, 0
	jr $31
	
###########################
moveBaixoRyan:


	add $24, $0, $31
	lui $8, 0x1001
	add $8, $8, $a0
	
	lw $9, 33308($8)   # y = 540 + 32768
sw $9, 540($8)     # x = 540

lw $9, 33312($8)   # y = 544 + 32768
sw $9, 544($8)     # x = 544

lw $9, 33316($8)   # y = 548 + 32768
sw $9, 548($8)     # x = 548

lw $9, 33320($8)   # y = 552 + 32768
sw $9, 552($8)     # x = 552

lw $9, 33324($8)   # y = 556 + 32768
sw $9, 556($8)     # x = 556

lw $9, 33328($8)   # y = 560 + 32768
sw $9, 560($8)     # x = 560

lw $9, 33800($8)   # y = 1032 + 32768
sw $9, 1032($8)    # x = 1032

lw $9, 33804($8)   # y = 1036 + 32768
sw $9, 1036($8)    # x = 1036

lw $9, 33808($8)   # y = 1040 + 32768
sw $9, 1040($8)    # x = 1040

lw $9, 33812($8)   # y = 1044 + 32768
sw $9, 1044($8)    # x = 1044

lw $9, 33816($8)   # y = 1048 + 32768
sw $9, 1048($8)    # x = 1048

lw $9, 33844($8)   # y = 1076 + 32768
sw $9, 1076($8)    # x = 1076

lw $9, 33848($8)   # y = 1080 + 32768
sw $9, 1080($8)    # x = 1080

lw $9, 33852($8)   # y = 1084 + 32768
sw $9, 1084($8)    # x = 1084

lw $9, 33856($8)   # y = 1088 + 32768
sw $9, 1088($8)    # x = 1088

lw $9, 33860($8)   # y = 1092 + 32768
sw $9, 1092($8)    # x = 1092

lw $9, 34308($8)   # y = 1540 + 32768
sw $9, 1540($8)    # x = 1540

lw $9, 34376($8)   # y = 1608 + 32768
sw $9, 1608($8)    # x = 1608

lw $9, 36876($8)   # y = 4108 + 32768
sw $9, 4108($8)    # x = 4108

lw $9, 36928($8)   # y = 4160 + 32768
sw $9, 4160($8)    # x = 4160

lw $9, 39956($8)   # y = 7188 + 32768
sw $9, 7188($8)    # x = 7188

lw $9, 39992($8)   # y = 7224 + 32768
sw $9, 7224($8)    # x = 7224

lw $9, 40464($8)   # y = 7696 + 32768
sw $9, 7696($8)    # x = 7696

lw $9, 40508($8)   # y = 7740 + 32768
sw $9, 7740($8)    # x = 7740

lw $9, 43028($8)   # y = 10260 + 32768
sw $9, 10260($8)   # x = 10260


	addi $a0, $a0, +512
	
	jal boo
	
	add $31, $0, $24


	jr $31

	
####		
	
puloRyan:

	add $17, $0, $31
	addi $12, $0, 32
	
lacoPulo:beq $12, $0, outLacoPulo
	
	jal moveCimaRyan
	jal timer
	jal timer
	jal timer
	jal moveGeralAlberto
	jal timer

	
	
	
	
	lw $23, 0($19)
	beq $23, $0, fimPulo1
	lw $23, 4($19)


	beq $a0, $18, limiteEsquerdoPulo
	beq $23, $21, callEsquerdaPulo1
limiteEsquerdoPulo:
	beq $a0, $13, limiteDireitoPulo
	beq $23, $22, callDireitaPulo1
limiteDireitoPulo:
	j fimPulo1
	
callEsquerdaPulo1: 
	jal moveEsquerdaRyan
	j fimPulo1
callDireitaPulo1:
	jal moveDireitaRyan
	j fimPulo1

fimPulo1:
 	addi $12, $12, -1
	j lacoPulo
	
outLacoPulo: 

	addi $12, $0, 32

lacoPulo2:beq $12, $0, outLacoPulo2
	
	jal moveBaixoRyan
	jal timer
	jal timer
	jal timer
	
	jal moveGeralAlberto
	jal timer
	
	lw $23, 0($19)
	beq $23, $0, fimPulo2
	lw $23, 4($19)
	
	beq $a0, $18, limiteEsquerdoPulo2
	beq $23, $21, callEsquerdaPulo2
limiteEsquerdoPulo2:
	beq $a0, $13, limiteDireitoPulo2
	beq $23, $22, callDireitaPulo2
limiteDireitoPulo2:
	j fimPulo2 
	
callEsquerdaPulo2: 
	jal moveEsquerdaRyan
	j fimPulo2
callDireitaPulo2:
	jal moveDireitaRyan
	j fimPulo2

fimPulo2:
 	addi $12, $12, -1
	j lacoPulo2
	
outLacoPulo2: 

	add $31, $0, $17
	jr $31
	
# ====================================================================
# Fun��o TIMER � Vers�o Corrigida
# ====================================================================
timer:
    addi  $t0, $zero, 4000   # Usa $t0 como contador
timer_loop:
    addi  $t0, $t0, -1
    bgtz  $t0, timer_loop
    jr    $ra
