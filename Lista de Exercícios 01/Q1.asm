.text

main:	# Faça um programa para ler um número inteiro e imprimir o dobro desse número.

	#Salva o valor 2 no $8
	addi $8, $0, 2
	
	#ler entrada externa
	addi $2, $0, 5
	syscall
	
	#Guarda a entrada no $9
	add $9, $0, $2
	
	#Multiplicação
	mul $10, $9, $8
	
	#Imprime o valor da multiplicação
	addi $2, $0, 1
	add $4, $0, $10
	syscall