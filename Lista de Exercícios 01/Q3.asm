,.text

main:	# Faça um programa para ler um número inteiro e imprimir o quadrado desse número.

	# Ler primeiro número
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	# Ler segundo número
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# Multiplicar os valores
	mul $10, $8, $9
	
	# Imprimir o resutado
	addi $2, $0, 1
	add $4, $0, $10
	syscall
