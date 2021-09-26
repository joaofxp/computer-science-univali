def loopVerificaNumeroPerfeito(numero):
    listaSoma = []
    valorLoop = numero
    
    while valorLoop > 1:
        valorLoop -= 1
        if (numero % valorLoop) == 0:
            listaSoma.append(valorLoop)
            
    somatorioLista = sum(listaSoma)

    if numero == somatorioLista:
        listaNumerosPerfeitos.append(numero)
        
listaNumerosPerfeitos = []
numeroAtual = 10000

while numeroAtual > 0:
    loopVerificaNumeroPerfeito(numeroAtual)
    numeroAtual -= 1
    
print('Numeros perfeitos de 1 a 10000: ')
print(listaNumerosPerfeitos)
