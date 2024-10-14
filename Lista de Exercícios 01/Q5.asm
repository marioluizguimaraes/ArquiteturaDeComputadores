.text

main: #Fa√ßa um programa que leia um n√∫mero inteiro entre 0 e 999 e imprima a soma dos algarismos desse n√∫mero. Ex.: 358 gera uma sa√≠da de 16, pois 3+5+8 = 16

	# Lenr entrada externa
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
	
	#imprimir
	add $4, $0, $14
	addi $2, $0, 1
	syscall
		
	# ServiÁo de finalizaÁ„o
	addi $2, $0, 10
	syscall

