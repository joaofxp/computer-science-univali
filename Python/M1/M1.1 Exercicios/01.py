def calculaAlcool(litros):
    valorAlcool = 4.19
    valorFinal = valorAlcool * litros
    
    if litros <= 20:
        valorFinal = round((valorFinal * 0.97),2)
    elif litros > 20:
        valorFinal = round((valorFinal * 0.95),2)
        
    printaValorFinal(valorFinal)
 
def calculaGasolina(litros):
    valorGasolina = 5.49
    valorFinal = valorGasolina * litros
    
    if litros <= 20:
        valorFinal = round((valorFinal * 0.96),2)
    elif litros > 20:
        valorFinal = round((valorFinal * 0.94),2)
        
    printaValorFinal(valorFinal)

def printaValorFinal(valor):
    print("Total a pagar: R$ ", valor)

litrosVendidos = float(input('Insira a quantidade de litros vendidos: '))
tipoCombustivel = input('Para o tipo de combustível, insira A para álcool e G para gasolina: ')

if (type(litrosVendidos) == float and type(tipoCombustivel) == str and len(tipoCombustivel) == 1):
    if tipoCombustivel == 'A':
        valorFinal = calculaAlcool(litrosVendidos)
    elif tipoCombustivel == 'G':
        valorFinal = calculaGasolina(litrosVendidos)
    else:
        print('Tipo de combustível inválido, tente novamente.')
else:
    print('Entrada inválida, tente novamente.')
