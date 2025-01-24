.data
.text
.globl copiaCenario
.globl movOrbe
.globl colisaoOrbe

#-------------------FUNCOES-----------------------------------------------------------------------

# REGS COM CORES -> 9, 10, 11, 12, 13, 14 (COPIA DO CENARIO FEITA, PODE REAPROVEITAR DO 9 AO 12)
# REG DELAY -> 15
# REGS MOV ORBE -> 16 E 17
# REGS RECUPERA CENARIO E CHAMA COLISAO-> 18 E 19

delay:
	addi $15, $0, 300000
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
								
										
movOrbe:
	lui $8, 0x1001 
	lui $9, 0x1001
	addi $16, $0, 200 # i
	add $17, $0, $31
forMov:
	beq $0, $16, fimMov
	
	jal orbe1
	jal orbe2
	jal delay
	jal recuperaCenario
	addi $8, $8, 512
	addi $9, $9, 1024
	
	sub $16, $16, 1
	j forMov
fimMov:
	j movOrbe
	add $31, $0, $17
	jr $31 
	
#---------------------------------------------------------------

colisaoOrbe:
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

	addi $2, $0, 10
	syscall