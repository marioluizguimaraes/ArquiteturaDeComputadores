.text

main: 	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	
	# Maior
	slt $9, $8, $4
	beq $9, $0, maior
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Serviço de impressão de caractere
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	# Diferença
	sub $4, $4, $8
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	j fim
		
maior:	# Diferença
	sub $10, $8, $4	
	add $4, $0, $8
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Serviço de impressão de caractere
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	# Serviço de impressão de inteiro
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	j fim

fim:	# Serviço de finalização
	addi $2, $0, 10
	syscall