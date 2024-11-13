.text 

main:	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	
	# parametro
	addi $8, $0, 4
	
	# Divisão
	div $2, $8
	mfhi $8
	
	# Conferindo parametro
	beq $8, $0, bi
	
	addi $4, $0, 'N'
	
	j print
	
bi:	addi $4, $0, 'S'

print:	# Serviço de impressão de caractere
	addi $2, $0,  11
	syscall

fim: 	# Serviço de finalização
	addi $2, $0,  10
	syscall
		