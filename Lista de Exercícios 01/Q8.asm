.text

main:	# Faça um programa que leia três números inteiros, representando a duração em horas,
	# minutos e segundos de um experimento científico e informe essa duração em
	# segundos.
	
	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	# Multiplos de tempo em segundos
	addi $11, $0, 3600
	addi $12, $0, 60
	
	mul $13, $8, $11 # h*s
	mul $14, $9, $12 # m*s
	
	add $4, $10, $13
	add $4, $4, $14
	
	# Serviço de impressão de inteiro
	addi $2, $0, 1
	syscall
	
	# Serviço de finalização
	addi $2, $0, 10
	syscall