.text

main: 	# Lenr entrada externa de um inteiro
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# Separar os digitos
	addi $8, $0, 10
	
	div $9, $8
	
	mfhi $10
	mflo $9
	
	div $9, $8
	
	mfhi $11
	mflo $12	
	
	# Soma entre eles
	add $13, $10, $11
	add $14, $12, $13
	
	#imprimir um inteiro
	add $4, $0, $14
	addi $2, $0, 1
	syscall
		
	# Serviço de finalização
	addi $2, $0, 10
	syscall

