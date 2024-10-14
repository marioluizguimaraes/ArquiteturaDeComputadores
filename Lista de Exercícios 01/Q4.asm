.text

main:
	# Serviço para ler o primeiro número
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	# Serviço para ler o segundo número
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# Salvar os pesos
	addi $10, $0, 2
	addi $11, $0, 3
	
	# Multiplicar as notas com os pesos
	mul $12, $10, $8
	mul $13, $11, $9
	
	# Soma dos pesos
	add $14, $10, $11
	
	# Soma das notas 
	add $15, $12, $13
	
	# Divisão da média
	div $15, $14
	mflo $4
	
	# Serviço de impressão
	addi $2, $0, 1
	syscall
	
	# Serviço de finalização
	addi $2, $0, 10
	syscall