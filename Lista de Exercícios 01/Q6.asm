.text

main:	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	
	# Salvando valores
	add $8, $0, $2
	addi $9, $0, 10
	
	# Seprando ultimo digito
	div $8, $9
	mflo $8
	mfhi $10
	
	# Seprando ultimo digito
	div $8, $9
	mflo $8
	mfhi $11
	
	add $4, $0, $8
	
	# Serviço de inpressão de inteiro
	addi $2, $0, 1
	syscall
	
	add $4, $0, $11
	
	# Serviço de inpressão de inteiro
	addi $2, $0, 1
	syscall
		
	add $4, $0, $10
	
	# Serviço de inpressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Serviço de finalização
	addi $2, $0, 10
	syscall
	
	
	
