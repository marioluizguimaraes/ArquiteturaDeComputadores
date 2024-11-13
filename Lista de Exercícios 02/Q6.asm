.text
main:   # Serviço de leitura de inteiro
	addi $2, $0, 5
        syscall
        add $8, $0, $2  # idade
        
        # Serviço de leitura de inteiro
        addi $2, $0, 5
        syscall
        add $9, $0, $2  #tempo de serviço
       
       # Parametros de aposentadoria
        addi $10, $0, 65
        addi $11, $0, 40
        addi $12, $0, 60
        addi $13, $0, 36
       
       # Aposenta
        slt $15, $8, $10 # $15 = Idade < 65 ? 1 : 0;
        beq $15, $0, apos
        
        slt $16, $9, $11 # $16 = tempo de serviço < 40 ? 1 : 0;
        beq $16, $0, apos
                       
        slt $17, $8, $12 # $17 = Idade < 60 ? 1 : 0;                                
        slt $18, $9, $13 # $18 = tempo de serviço < 36 ? 1 : 0;
        add $19, $17, $18
        beq $19, $0, apos
       
        addi $4, $0, 'N'
        j imp
        
apos:   addi $4, $0, 'S'

imp:    # Serviço de impressão de caractere
	addi $2, $0, 11
        syscall      
        
        # Serviço de finalização                                                                                                                                                                                                                                                              
        addi $2, $0, 10
        syscall