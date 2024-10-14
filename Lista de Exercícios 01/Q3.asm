.text

main:	# FaÃ§a um programa para ler um nÃºmero inteiro e imprimir a multiplicação desses dois número.

	# Ler primeiro nÃºmero
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	# Ler segundo nÃºmero
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# Multiplicar os valores
	mul $10, $8, $9
	
	# Imprimir o resutado
	addi $2, $0, 1
	add $4, $0, $10
	syscall
		
	# Serviço de finalização
	addi $2, $0, 10
	syscall
