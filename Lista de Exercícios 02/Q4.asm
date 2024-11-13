.text

main:	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# Comparando igualdade
	beq $8, $9, iguais
	
	# Maior
	slt $10, $9, $8
	beq $10, $0, maior8
	
	# Serviço de impressão de inteiro
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	# Serviço de impressão de caractere
	add $4, $0, '>'
	addi $2, $0, 11
	syscall
	
	# Serviço de impressão de inteiro
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j fim

maior8: # Serviço de impressão de inteiro
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	# Serviço de impressão de caractere
	add $4, $0, '<'
	addi $2, $0, 11
	syscall
	
	# Serviço de impressão de inteiro
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	j fim
	
iguais: # Serviço de impressão de inteiro
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	# Serviço de impressão de caractere
	add $4, $0, '='
	addi $2, $0, 11
	syscall
	
	# Serviço de impressão de inteiro
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	j fim
	
fim:	# Serviço de finalização
	addi $2, $0, 10
	syscall