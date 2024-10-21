.text

main:	# Divisores de tempo
	addi $8, $0, 60
	addi $9, $0, 3600
	
	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	
	# Salvar $2 no $10
	add $10, $0, $2 # Segundos
	
	# Dividir s/h
	div $10, $9
	
	mflo $11 # Horas
	mfhi $12 # Minutos
	
	# Dividir m/s
	div $12 , $8
	
	mflo $12 # Minutos
	mfhi $13 # Segundos
	
	# Serviço de impressão de inteiro (H)
	addi $2, $0, 1
	add $4, $0, $11
	syscall
	
	# Serviço de impressão de Caractere
	addi $2, $0, 11
	add $4, $0, ':'
	syscall
	
	# Serviço de impressão de inteiro (M)
	addi $2, $0, 1
	add $4, $0, $12
	syscall
	
	# Serviço de impressão de Caractere
	addi $2, $0, 11
	add $4, $0, ':'
	syscall
		
	# Serviço de impressão de inteiro (S)
	addi $2, $0, 1
	add $4, $0, $13
	syscall
		
	# Serviço de finalização
	addi $2, $0, 10
	syscall
	
	
	
	
	
	
	
