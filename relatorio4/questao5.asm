.text

#QUESTAO 1 E 2:

li $t0, 2 #a
li $t1, 1 #b
li $t2, 0 #c

#if (a == b)
beq $t0, $t1, then
#else
add $t1, $t0, $t2 #b = a + c;
sub $t2, $t1, $t2 #c = b - c;
j fim
then:
add $t2, $t0, $t1 #c = a + b;
sub $t0, $t1, $t2 #a = b - c;
fim:

#QUESTAO 3:

li $t0, 2 #a
li $t1, 1 #b
li $t2, 0 #c

#if (a > b)
blt $t0, $t1, then
#else
sub $t1, $t0, $t2 #b = a - c;
add $t2, $t1, $t2 #c = b + c;
j fim
then:
sub $t2, $t0, $t1 #c = a - b;
add $t0, $t1, $t2 #a = b + c;
fim:

#QUESTAO 4:

li $t0, 2 #a
li $t1, 1 #b
li $t2, 0 #c

#if (a > b)
bgt $t0, $t1, then
#else
add $t1, $t0, $t2 #b = a + c;
sub $t2, $t1, $t2 #c = b - c;
j fim
then:
add $t2, $t0, $t1 #c = a + b;
sub $t0, $t1, $t2 #a = b - c;
fim:

#QUESTAO 5:

li $t0, 10 #i = 10;
li $t1, 0 #cont = 0;

#while se menor ou igual a 2
A: bgt $t0, 0, B
j Exit
B: 
  addi $t1, $t1, 5
  subi $t0, $t0, 2
  j A
Exit: