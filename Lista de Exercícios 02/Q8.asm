.text 

main:	# Serviço de leitura de inteiro	
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Dia
	
	# Serviço de leitura de inteiro	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # mes
	
	# Serviço de leitura de inteiro	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # ano
	
	# Parametros dias
	addi $11, $0, 1
	addi $12, $0, 31
	addi $13, $0, 30
	addi $14, $0, 28
	
	# Parametros mes
	addi $15, $0, 12
	
	srl $16, $8, 31
	beq $16, $11, invalido
	
	slt $16, $12, $8
	beq $16, $0, invalido
	
	
invalido:
	addi $4, $0, 'N'
	
print:	
	addi $2, $0, 11
	syscall