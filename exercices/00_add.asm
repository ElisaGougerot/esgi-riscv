# Exercice 0
# Faire une addition dans un registre

.text # <- segment de code.

# Exercice:
# On veux obtenir le nombre 64 modifier le code pour pouvoir avoir 64
# dans t0 à la fin du programme.

mon_code: # <- Label
li   t0, 32 #LOAD immediate : charge un nombre sur max 12 bit dans un registre
addi t0, t0, 32 #ADDITIONNE un registre et un immediat et stock le résulatt dans une registre (premier c'est destination, second c'est operand1, troisième immediat)

# Bonus: avoir 64 dans un registre en une seule instruction

li t1, 64 # la plus ismple et cool :)

addi t2, zero, 32
add t3, t2, t2 #ADDITION entre op1 (t2): op2 (t2); on stovke dans t2

# Ce qui est vert c'est le dernier registre modifié par votre dernière instruction (à droite)
# 12bits: 4095
# Nombre max encodable sur nbits: nombres non signé: 2^n - 1
# 4095 (dec) | 0xfff | 0b111111111111
# 4096 | 0x1000 | 0b1000000000000
# 32 en decimal c'est 0x20 en hexadecimal 

