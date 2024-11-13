.text

main: 	#Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $8, $0, $2 
	
	#Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	#Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	# Soma dos pesos
	addi $11, $0, 6
	
	# Nota 2 (x2)
	sll $9, $9, 1 
	
	# Nota 3 (x3)
	sll $12, $10, 1
	add $10, $12, $10
	
	# Media
	add $12, $8, $9
	add $12, $12, $10
	div $12, $11
	mflo $13
	
	# Serviço de impressão de inteiro
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	# Serviço de impressão de caractere
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall	
	
	# Parametros de aprovação
	addi $11, $0, 1
	addi $14, $0, 60

	# Aprovaçao
	slt $14, $13, $14
	beq $14, $11, reprovado
	
	# Serviço de impressão de caractere
	add $4, $0, 'A'
	syscall	

	j fim	
		
reprovado:
	# Serviço de impressão de caractere
	add $4, $0, 'R'
	syscall		
	
fim:	# Serviço de finalização
	addi $2, $0, 10
	syscall