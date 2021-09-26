valorSaque = float(input('Digite um valor para retirada: '))

valorSaqueNotas = valorSaque

notasDe100 = 0
notasDe50 = 0
notasDe10 = 0
notasDe5 = 0
notasDe2 = 0
moedasDe1 = 0
cinquentaCentavos = 0
vinteECincoCentavos = 0
dezCentavos = 0
umCentavo = 0

notasDe100 = int(valorSaqueNotas / 100)
valorSaqueNotas = valorSaque % 100

notasDe50 = int(valorSaqueNotas / 50)
valorSaqueNotas -= notasDe50 * 50
notasDe10 = int(valorSaqueNotas / 10)
valorSaqueNotas -= notasDe10 * 10
notasDe5 = int(valorSaqueNotas / 5)
valorSaqueNotas -= notasDe5 * 5
notasDe2 = int(valorSaqueNotas / 2)
valorSaqueNotas -= notasDe2 * 2
moedasDe1 = int(valorSaqueNotas / 1)
valorSaqueNotas -= moedasDe1 * 1

cinquentaCentavos = int(valorSaqueNotas / 0.5)
valorSaqueNotas -= cinquentaCentavos * 0.5

vinteECincoCentavos = int(valorSaqueNotas / 0.25)
valorSaqueNotas -= vinteECincoCentavos * 0.25

dezCentavos = int(valorSaqueNotas / 0.10)
valorSaqueNotas -= dezCentavos * 0.10

umCentavo = round(valorSaqueNotas*100,1)

print("Valor do saque: ", valorSaque)
print("Notas de 100: ", notasDe100)
print("Notas de 50: ", notasDe50)
print("Notas de 10: ", notasDe10)
print("Notas de 5: ", notasDe5)
print("Notas de 2: ", notasDe2)

print("Moedas de 1 real: ", moedasDe1)
print("Moedas de 50 centavos: ", cinquentaCentavos)
print("Moedas de 25 centavos: ", vinteECincoCentavos)
print("Moedas de 10 centavos: ", dezCentavos)
print("Moedas de 1 centavos: ", umCentavo)
