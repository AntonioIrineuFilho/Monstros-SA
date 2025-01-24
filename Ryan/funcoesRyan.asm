.text
.globl moveDireitaRyan

.globl timer

	addi $20, $0, 'w'
	addi $21, $0, 'a'
	addi $22, $0, 's'
	addi $23, $0, 'd'
startGame2:
fimStartGame: j startGame2
	

moveDireitaRyan:

	# Salvar os registradores usados
	addi $sp, $sp, -12       # Reservando espaço na pilha
	sw $a0, 0($sp)           # Salvar $a0
	sw $31, 4($sp)           # Salvar $31 (retorno)
	sw $24, 8($sp)           # Salvar $24 (usado no retorno da função)

	add $21, $0, $31
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

lw $9, 43564($8)
sw $9, 10796($8)

lw $9, 44076($8)
sw $9, 11308($8)

	
	# Restauração dos registradores antes de retornar
	lw $a0, 0($sp)           # Restaurar $a0
	lw $31, 4($sp)           # Restaurar $31 (endereço de retorno)
	lw $24, 8($sp)           # Restaurar $24

	addi $sp, $sp, 12        # Desalocar espaço na pilha
	
	addi $a0, $a0, 4
	
	jal boo
	add $31, $0, $24
	jr $31
	
timer: sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 50000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31