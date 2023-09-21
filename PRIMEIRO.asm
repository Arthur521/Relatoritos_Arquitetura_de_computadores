.data
espaco: .asciiz " "
frase1: .asciiz "Qual será sua idade daqui 30 anos? Digite sua idade: "

.text

##### EXERCICIO 1 ####

li $t1, 2
li $t2, 5
add $t1, $t1, $t2

li $v0, 1 
move $a0, $t1
syscall

li $v0, 4
la $a0, espaco
syscall

li $t1, 89
li $t2, 20
add $t1, $t1, $t2

li $v0, 1 
move $a0, $t1
syscall

li $v0, 4
la $a0, espaco
syscall

li $t1, -80
li $t2, 1234
add $t1, $t1, $t2

li $v0, 1 
move $a0, $t1
syscall

li $v0, 4
la $a0, espaco
syscall

li $t1, 70
li $t2, -24
add $t1, $t1, $t2

li $v0, 1 
move $a0, $t1
syscall

li $v0, 4
la $a0, espaco
syscall

li $t1, 20
li $t2, -150
add $t1, $t1, $t2

li $v0, 1 
move $a0, $t1
syscall

li $v0, 4
la $a0, espaco
syscall



##### EXERCICIO 2 ####

#inicia o v0 como 4 para fazer print
li $v0, 4
la $a0, frase1
syscall

#guarda valor do digito
li $v0, 5
syscall

#guarda no t1
add $t1, $v0, $0 

#soma
addi $t1, $t1, 30

#mostra
li $v0, 1 
move $a0, $t1
syscall



##### EXERCICIO 3 ####

#soma
addi $t1, $0, 30

addi $t2, $0, 30

#soma
add $t1, $t1, $t2

#mostra
li $v0, 1 
move $a0, $t1
syscall
