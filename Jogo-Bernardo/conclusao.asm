.text


criarGameOver:
	lui $8, 0x1001
	ori $9, $0, 0xFFFFFF
#0 ponta esq, 508 ponta dir	
	sw $9, 10324($8)