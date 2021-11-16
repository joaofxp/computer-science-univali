import numpy as np
import cv2 as cv


def bitfield(n):
    return [int(digit) for digit in bin(n)[2:]]


def gerar_mensagem(mensagem):
    lista = []
    for m in mensagem:
        val = ord(m)
        bits = bitfield(val)

        if len(bits) < 8:
            for a in range(8-len(bits)):
                bits.insert(0, 0)
        lista.append(bits)
    arr = np.array(lista)
    arr = arr.flatten()
    return arr


def converter_mensagem(saida):
    bits = np.array(saida)
    mensagem_out = ''
    bits = bits.reshape((int(len(saida)/8), 8))
    for b in bits:
        sum = 0
        for i in range(8):
            sum += b[i]*(2**(7-i))
        mensagem_out += chr(sum)
    return mensagem_out


texto = "Batatinha 123"
terminadorMensagem = "##"
texto += terminadorMensagem
arrayBits = gerar_mensagem(texto)

terminadorEmBits = gerar_mensagem(terminadorMensagem)
terminadorEmBitsString = ""
for val in terminadorEmBits:
    terminadorEmBitsString += str(val)

image = cv.imread('teste.png')
listaUltimosDigitosVermelhos = []

# gerei lista de ultimos digitos vermelhos
for row in image:
    for pixel in row:
        if(pixel[2] % 2 == 0):
            listaUltimosDigitosVermelhos.append(0)
        else:
            listaUltimosDigitosVermelhos.append(1)


# inseri a mensagem na lista de ultimos digitos vermelhos
for i in range(len(arrayBits)):
    listaUltimosDigitosVermelhos[i] = arrayBits[i]


# inseri a mensagem oculta na imagem
i = 0
countLimite = len(arrayBits)
print('comecou')

for row in image:
    for pixel in row:
        if(i < countLimite):
            # se for par, e quero guardar 1, soma 1, transforma ele em impar
            if(pixel[2] % 2 == 0 and listaUltimosDigitosVermelhos[i] == 1):
                pixel[2] = pixel[2] + 1

            # se for impar, quero guardar um 0, subtrai 1, transforma ele em par
            if(pixel[2] % 2 > 0 and (listaUltimosDigitosVermelhos[i] == 0)):
                pixel[2] = pixel[2] - 1
            i += 1
        else:
            break

listaUltimosDigitosVermelhos = []

# gerei lista de ultimos digitos vermelhos
for row in image:
    for pixel in row:
        # listaUltimosDigitosVermelhos.append(pixel[2])
        if(pixel[2] % 2 == 0):
            listaUltimosDigitosVermelhos.append(0)
        else:
            listaUltimosDigitosVermelhos.append(1)

i = 0
mensagem = ""

# peguei a mensagem oculta dentro da lista de ultimos digitos vermelhos
for val in listaUltimosDigitosVermelhos:
    i += 1

    if(mensagem.find(terminadorEmBitsString) >= 0):
        print('achou')
        break

    mensagem += str(val)

mensagemBits = []
for letra in mensagem:
    mensagemBits.append(int(letra))

# print('mensagem criptografada', arrayBits)
# print('mensagem criptografada', len(arrayBits))
# print('mensagem encontrada', mensagemBits)
# print('mensagem encontrada', len(mensagemBits))
mensagemConvertida = converter_mensagem(mensagemBits)
mensagemConvertida = mensagemConvertida.replace(terminadorMensagem, '')

print('mensagem convertida: ', mensagemConvertida)

# cv.imshow('top', image)
# cv.waitKey(0)
