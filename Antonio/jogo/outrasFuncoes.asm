.data
msgMenuInicial:	.asciiz "MONSTERS INC - MINIGAME COLLECTION\n1-SULLY MINIGAME\n2-BOO MINIGAME\n3-MIKE MINIGAME\n"
.text
.globl delay, copiaCenario, movGeral, returnMovSully, movSully, menuInicial, gameOver


#-------------------FUNCOES-----------------------------------------------------------------------

# REGS COM CORES -> 9, 10, 11, 12, 13, 14 (COPIA DO CENARIO FEITA, PODE REAPROVEITAR DO 9 AO 12)
# REG DELAY -> 15
# REGS MOV ORBE -> 16 E 17
# REGS RECUPERA CENARIO E CHAMA COLISAO-> 18 E 19

# REGS QUE NAO PODE MEXER -> 8, 9, 10, 11, 12, 16, 17, 21
# REGS QUE PODE-SE REAPROVEITAR -> 13, 14, 15, 18, 19, 20, 22
# REGS NAO UTILIZADOS -> 23, 24, 25

delay:
	addi $15, $0, 25000 # delay ideial: 200000
	forDelay:
		beq $0, $15, fimDelay
		nop
		nop
		nop
		sub $15, $15, 1
		j forDelay
		fimDelay:
			jr $31

#--------------------------------------------------------------------------------

copiaCenario:
	lui $8, 0x1001
	addi $13, $0, 8192 # i
	forCopia:
		beq $0, $13, fimCopia
		
		lw $14, 0($8)
		sw $14, 32768($8)
		addi $8, $8, 4
		
		sub $13, $13, 1
		j forCopia
		fimCopia:
			jr $31
	
#--------------------------------------------------------------------------------	
								
										
movGeral:
	lui $8, 0x1001 
	lui $9, 0x1001
	lui $10, 0x1001
	lui $11, 0x1001
	lui $12, 0x1001
	forMov:
		jal movSully
		returnMovSully:
		jal orbe1
		jal orbe2
		jal orbe3
		jal orbe4
		jal orbe5
		jal delay
		jal recuperaCenarioOrbes
		addi $8, $8, 512
		addi $9, $9, 1024
		addi $10, $10, 1536
		addi $11, $11, 512
		addi $12, $12, 512

		j forMov 

#--------------------------------------------------------------------------------

movSully:
	add $18, $0, $31
	lui $13, 0xffff # guarda 1 se tiver entrada do teclado e 0 se n�o tiver
	lw $14, 0($13) # guarda o valor teclado no 14
	beq $14, $0, fimMovSully
	lw $14, 4($13)
	
	addi $15, $0, 65 # tecla A
	beq $15, $14, movEsquerda
	addi $15, $0, 97 # tecla a
	beq $15, $14, movEsquerda
	
	addi $15, $0, 68 # tecla D
	beq $15, $14, movDireita
	addi $15, $0, 100 # tecla d
	beq $15, $14, movDireita

	fimMovSully:
		jal sully
		add $31, $0, $18
		jr $31

#--------------------------------------------------------------------------------

menuInicial:
	la $16, msgMenuInicial
	add $4, $0, $16
	addi $2, $0, 4 # syscall de string
	syscall
	
	jr $31

#--------------------------------------------------------------------------------
						
orbesColetados:
        addi $4, $0, 'O'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'R'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'B'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'E'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'S'
        addi $2, $0, 11
        syscall

        addi $4, $0, ' '
        addi $2, $0, 11
        syscall

        addi $4, $0, 'C'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'O'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'L'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'E'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'T'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'A'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'D'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'O'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'S'
        addi $2, $0, 11
        syscall

        addi $4, $0, ':'
        addi $2, $0, 11
        syscall

        addi $4, $0, ' '
        addi $2, $0, 11
        syscall
        
        add $4, $0, $25
        addi $2, $0, 1
        syscall
        
        addi $4, $0, '\n'
        addi $2, $0, 11
        syscall
        
        jr $31
#--------------------------------------------------------------------------------
	
gameOver:
	jal sully
	
	jal orbesColetados
	
        addi $4, $0, 'G'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'A'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'M'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'E'
        addi $2, $0, 11
        syscall

        addi $4, $0, ' '
        addi $2, $0, 11
        syscall

        addi $4, $0, 'O'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'V'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'E'
        addi $2, $0, 11
        syscall

        addi $4, $0, 'R'
        addi $2, $0, 11
        syscall
	
	j fim

#--------------------------------------------------------------------------------

	
