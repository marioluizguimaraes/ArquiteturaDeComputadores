.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	beq $8, $9, igual
	slt $10, $8, $9
	
	beq $10, $0, menor2
	add $4, $0, $8
	addi $2, $0, 1
	j imp
	
igual: 	addi $4, $0, '='
	addi $2, $0, 11
	j imp
	
menor2: add $4, $0, $9
	addi $2, $0, 1


imp: 	syscall