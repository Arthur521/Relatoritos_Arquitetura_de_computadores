.data
frase0: .asciiz "Insira seu número: "
numero: .word 0  

.text
#inicia o v0 como 4 para fazer print
li $v0, 4
la $a0, frase0
syscall

li $v0, 5
syscall

add $t1, $v0, $0
li $t0, 0

repete:
    bge $t0, $t1, pet
    addi $t0, $t0, 1 
    
    add $t2, $t0, $t2
    
    mul $s1, $t0, $t0
    add $t3, $t3, $s1
    j repete
    
pet:
    mul $t2, $t2, $t2
    sub $t1, $t2, $t3
    sw $t1, numero
    lw $a0, numero    # Carrega o número inteiro da memória para $a0
    li $v0, 1         # Código do sistema para imprimir inteiro
    syscall

