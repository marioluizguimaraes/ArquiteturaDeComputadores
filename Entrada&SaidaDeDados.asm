.text
main: 
	#Ler um numero
	addi $2, $0, 5 	# para ler uma entrada de dados externa, o $2 deve conter o valor 5 (valor para a leitura)
	syscall	# a função vai indetificar o valor de $2 e vai entender que deve haver uma entrada de dados que vai ser guardada no $2
	add $4, $0, $2  # guarda o valor da entrada, que ta no $2 no $4 (Registrador que guarda o dado que vai ser impressão)
	
	#Imprimir o dado da entrada
	addi $2, $0, 1  # para imprimir algo, o $2 deve conter o valor 1 (valor de indentificação de impressão)
	syscall	# indetificar o valor de $2 e vai entender que está mandando imprimir o valor do $4 (Local padrão dos dados que vão ser impressos)
	
	
	
	
	
