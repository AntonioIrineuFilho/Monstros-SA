.text
.globl gameOverRyan
main:

gameOverRyan:

	lui $8, 0x1001
        
        addi $20, $0, 8192
        
testFinal:   beq $20, $0, outTestFinal

        sw $9, 0($8)
        addi $8, $8, 4
       
        addi $20, $20, -1
        j testFinal  
        
outTestFinal:  

	addi $2, $0, 10
	syscall