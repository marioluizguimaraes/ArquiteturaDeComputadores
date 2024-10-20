.text

main:	# Faça um programa que leia um caractere minúsculo e imprima o seu equivalente maiúsculo.

	# Serviço de leitura de caractere
	addi $2, $0, 12
	syscall
	
	# Salvar caractere no $8
	add $8, $0, $2
	
	# Salvar valor da diferença do Caractere Maiusculo para o menusculo na tebela ascII
	addi $9, $0, 32
		
	# Serviço de impressão de caractere do $4
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	add $4, $0, '='
	addi $2, $0, 11
	syscall
	
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	# Converçaõ
	sub $4, $8, $9	
	
	# Serviço de impressão de caractere do $4
	addi $2, $0, 11
	syscall
	
	# Serviço de finalização
	addi $2, $0, 10
	syscall
	
