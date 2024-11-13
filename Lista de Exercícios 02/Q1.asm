.text

main:	#Serviço de leitura 
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	#Serviço de leitura 
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	
	#comparando
	slt $9, $8, $4 # $9 = $8 < $4
	beq $9, $0, maior8 # $9 == 0
	
	#Serviço de impressao de inteiro
	addi $2, $0, 1
	syscall
	j fim

maior8:	add $4, $0, $8

	#Serviço de impressao de inteiro
	addi $2, $0, 1
	syscall
	
	#Serviço de finalizasao
fim: 	addi $2, $0, 10
	syscall
	
	
	
	
	