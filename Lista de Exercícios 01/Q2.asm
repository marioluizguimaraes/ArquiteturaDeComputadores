.text

main:   # Ler entrada externa
	addi $2, $0, 5
	syscall
	
	# Guardar entrada no $8
	add $8, $0, $2
	
	# Elevar ao quadrado
	mul $9, $8, $8
	
	# Imprimir resutado
	addi $2, $0, 1
	add $4, $0, $9
	syscall
	
	# Serviço de finalização
	addi $2, $0, 10
	syscall
	
