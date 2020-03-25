# Exercice 1
# utiliser un appel système comme write

# On indique qu'on souhaite ranger des données dans le segment de data
.data

#la directive .asciz permet de déclarer une chaine fini par un 0x00, 'anti-slash 0' en ascii
msg: .asciz "Hello ASM from .data"
# msg esr un label

.text # <- segment de code.

# Exercice: Observation dans Rars
# - Quelle est l'addresse de base de la chaine msg? Son addresse de fin? --> BASE : 0x7fffeffc . FIN : 0x10010000
# - Dans quelle segment de la mémoire est elle? --> DATA
# - Quelle sont les valeurs en hexadecimales présente dans .data?

# la : Load Adress, charge une adresse (label) dans un registre
la a0, msg # argument de l'appel système
li a7, 4 # appel systeme 4 selon la doc de Rars printString : Doc > Help > syscalls pour avoir l'info du 4

ecall # Permet de basculer en mode kernel pour faire l'appel système

#`printf` c'est dans `stdio` et ça utilise `write` qui est dans `unistd`
#`write` utilise lui même un appel système linux.


# Bonus: Afficher maintenant un nombre, vous aurez besoin de la documentation 
li a7, 1
li a1, 32
add a0, a1, a1
ecall
