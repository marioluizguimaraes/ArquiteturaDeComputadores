.text

main: 	# Serviço de leitura de um inteiro
	addi $2, $0, 5
	syscall
	
	# Salvando variáveis
	add $9, $0, $2
	addi $8, $0, 10
	
	# Estraindo o ultimo digito
	div $9, $8
	mflo $9
	mfhi $4
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Serviço de impressão de icaractere
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	# Estraindo o ultimo digito
	div $9, $8
	mflo $9
	mfhi $4
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Serviço de impressão de icaractere
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	# Estraindo o ultimo digito
	div $9, $8
	mflo $9
	mfhi $4
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Serviço de impressão de icaractere
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	# Salvando ultimo digito
	add $4, $0, $9
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Serviço de finalização
	addi $2, $0, 10
	syscall
