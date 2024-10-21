.text

main:	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	
	# Salvando valores
	add $8, $0, $2
	addi $9, $0, 10
	
	# Separando ultimo digito
	div $8, $9
	mflo $8
	mfhi $4
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Separando ultimo digito
	div $8, $9
	mfhi $4
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	
	mflo $4
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Serviço de finalização
	addi $2, $0, 10
	syscall
	
	
	
	