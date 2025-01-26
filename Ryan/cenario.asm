.text
.globl cenario

#REG USADOS $8, $9, $20, $21

cenario:   

	lui $8, 0x1001
        ori $9, $0, 0xf7bee7
        
        addi $20, $0, 8192
        
test:   beq $20, $0, outTest

        sw $9, 0($8)
        sw $9, 32768($8)
        addi $8, $8, 4
       
        
        addi $20, $20, -1
        j test  
        
outTest:  

	add $8, $0, $0
	lui $8, 0x1001
	ori $9, $0, 0xff73d8
	addi $20, $0, 8192
	addi $21, $0, 4
	
test2:	beq $20, $0, outTest2

	test2interno: beq $21, $0, outTest2interno

		sw $9, 0($8)
		sw $9, 32768($8)
		addi $8, $8, 4
		
		addi $21, $21, -1
		j test2interno
	outTest2interno:
	
	addi $8, $8, 16
	addi $20, $20, -1
	addi $21, $0, 4
	j test2
outTest2:

	add $8, $0, $0
	lui $8, 0x1001
	addi $8, $8, 27648
	ori $9, $0, 0xbf4334
	addi $20, $0, 8192
	addi $21, $0, 6911
	
test3:	beq $20, $0, outTest3
	
	sle $22, $20, $21 #if $20<=$21 {$22=1} else {$22=0}
	beq $22, $0, printChao
	j fimChao
printChao:
	sw $9, 0($8)
	sw $9, 32768($8)
	addi $8, $8, 4
fimChao:
	addi $20, $20, -1
	j test3

outTest3:

	jr $31
