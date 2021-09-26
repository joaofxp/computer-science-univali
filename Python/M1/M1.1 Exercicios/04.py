def cifrar(cifra):
    alfabeto = "abcdefghijklmnopqrstuvwxyz"
    alfabetoTamanho = len(alfabeto)
    numeros = '0123456789'
    numerosTamanho = len(numeros)
    
    numeroDeslocamentos = int(input("Insira um número de deslocamentos: "))
    # numeroDeslocamentos = int(4)
    
    print('Cifra inicial:')
    print(cifra)
    
    cifra = list(cifra)
    novaCifra = []
    
    for valor in cifra:
        # ver se é letra, numero ou espaço
        if alfabeto.find(valor) > -1: #éLetra
            posicaoLetra = alfabeto.find(valor)
            posicaoLetraNova = posicaoLetra + numeroDeslocamentos

            if posicaoLetraNova > alfabetoTamanho:
                posicaoLetraNova = posicaoLetraNova - alfabetoTamanho
                
            novaCifra.append(alfabeto[posicaoLetraNova])
        elif valor.isnumeric():
            posicaoNumero = numeros.find(valor)
            posicaoNumeroNovo = posicaoNumero + numeroDeslocamentos
            
            if posicaoNumeroNovo > numerosTamanho:
                posicaoNumeroNovo = posicaoNumeroNovo - numerosTamanho
                
            novaCifra.append(numeros[posicaoNumeroNovo])
        else:
            novaCifra.append(valor)
    
    novaCifra = ''.join(novaCifra)
    
    print()
    print('Nova cifra:')
    print(novaCifra)
    

cifra = input("Insira uma frase com letras e/ou numeros: ").lower()

cifrar(cifra)
