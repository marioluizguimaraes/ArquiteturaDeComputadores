.text

main:	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	
	# Salvando valores
	addi $8, $0, 2
	addi $9, $0, -1
	
	# Dividindo por 2
	div $2,$8
	mfhi $10
	
	# Indentificando par ou ímpar
	mul $4, $10, $9
	
	# Serviço de impressão
	addi $2, $0, 1
	syscall
	