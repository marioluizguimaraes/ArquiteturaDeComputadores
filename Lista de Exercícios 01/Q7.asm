.text

main: 	# Faça um programa que leia um número entre 0 e 9999 e imprima cada algarismo em
	# uma linha diferente.

	addi $2, $0, 5
	syscall
	
	addi $8, $0 10
	
	div $2, $8
	mfhi $4
	mflo $10 
	
	addi $2, $0, 1
	syscall
	add $4, $0, 'n/'
	addi $2, $0, 1
	syscall
	
	div $10, $8
	mflo $10 
	
	mfhi $4 
	addi $2, $0, 1
	syscall
	
	div $10, $8
	
	mfhi $4
	addi $2, $0, 1
	syscall
	
	mflo $4
	addi $2, $0, 1
	syscall
