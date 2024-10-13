.text
main:
	# Guadando valores
	addi $8, $0, 2 	# $0 + 2 = $8 (Soma o valor do $0 com a constante 2 e guarda no $8)
	addi $9, $0, 8	# $0 + 8 = $9 (Soma o valor do $0 com a constante 8 e guarda no $9)
	addi $2, $0, 1  # $0 + 1 = $2 (soma o valor do $0 com a constante 1 e guarda no $2)
	
	# Somando valores
	add $10, $8, $9   # $8 + $9 = $10 (Soma o valor do $8 com o valor de $9 e guarda no $10)
	add $11, $10, $10 # $10 + $10 = $11 (Soma o valor do $10 com o valor de $10 e guarda no $11)
	add $4, $0, $11   # $0 + $11 = $4 (Soma o valor do $0 com o valor do $11 e guarda no $4 -> Registrador pra impressão)
	syscall # Função para imprimir o valor atribuido ao $4 -> 20
	
	# Multiplicando valores
	mul $12, $11, $8 # $11 * $8 = $12 (multiplica o valor do $11 com o valor de $8 e guarda no $12)
	add $4, $0, $12  # $0 + $12 = $4 (Soma o valor do $0 com o valor do $12 e guarda no $4 -> Registrador pra impressão)
	syscall # Função para imprimir o valor atribuido ao $4 -> 40
	
	#Dividindo valores
	div $12, $9 # $12 / $9 (Divide o valor do %12 pelo valor do $9, onde quoeficiente é guardado no LO e o resto no HI)
	mflo $13 # Copia o valor do LO para o $13
	add $4, $0, $13 # $0 + $13 = $4 (Soma o valor do $0 com o valor do $13 e guarda no $4 -> Registrador pra impressão)
	syscall # Função para imprimir o valor atribuido ao $4 -> 5
	
	