.text

main:	# Serviço de leitura de inteiro
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	# Indentificando o sinal
	srl $9, $8, 31
	beq $9, $0, posit
	
	# Elevado a 2
	mul $4, $8, $8
	j imp

posit:	# Dobro
	sll $4, $8, 1
	j imp	
		

imp:	# Serviço de impressao
	addi $2, $0, 1
	syscall
	
	# Serviço de finalização
	addi $2, $0, 10
	syscall
	
	
	
