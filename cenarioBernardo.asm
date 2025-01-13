main: 
    lui $8, 0x1001         
    addi $9, $0, 0xFFFFF0   
    addi $10, $0, 0xc57d56  
    addi $12, $0, 8192   
    
forFundo: 
    beq $0, $12, fimFundo  
    sw $9, 0($8)           
    addi $8, $8, 4         
    sub $12, $12, 1         
    j forFundo              


fimFundo:
    lui $8, 0x1001
    addi $8, $8, 24576     
    addi $12, $0, 2048   
    
forPiso:
    beq $0, $12, fimPiso    
    sw $10, 0($8)           
    addi $8, $8, 4          
    sub $12, $12, 1        
    j forPiso               

fimPiso:
    lui $8, 0x1001          
    addi $8, $8, 65536     
    li $12, 65536  
    sub $12, $0, $8   

fim:
    addi $2, $0, 10
	syscall
