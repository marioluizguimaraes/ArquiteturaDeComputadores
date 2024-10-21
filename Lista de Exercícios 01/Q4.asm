.text

main:	# Servi�o para ler o primeiro n�mero
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	# Servi�o para ler o segundo n�mero
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
	
	# Divis�o da m�dia
	div $15, $14
	mflo $4
	
	# Servi�o de impress�o
	addi $2, $0, 1
	syscall
	
	# Servi�o de finaliza��o
	addi $2, $0, 10
	syscall
