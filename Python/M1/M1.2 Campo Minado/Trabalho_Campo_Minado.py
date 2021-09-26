import random

global jogoRodando
global campoTamanho
global bombasQuantidade
global valorCampoNaoRevelado
global valorCampoRevelado
global valorCampoBomba
global campoUsuario
global campoSistema


def inserirBombas(campo, quantidade):
    quantidadeAux = quantidade

    while quantidadeAux > 0:
        randomLinha = random.randint(0, campoTamanho - 1)
        randomColuna = random.randint(0, campoTamanho - 1)

        if(campo[randomLinha][randomColuna] == valorCampoNaoRevelado):
            campo[randomLinha][randomColuna] = valorCampoBomba
            quantidadeAux -= 1

    return campo


def printarCampo(campo):
    print()
    counter = 0
    colunas = ''
    for i in range(campoTamanho):
        colunas += '    ' + str(i) + ''

    print(colunas)

    for linha in campo:
        print(str(counter) + ' ' + str(linha))
        counter += 1


def inicializarCampo():
    campo = []

    for i in range(campoTamanho):
        campo.append([valorCampoNaoRevelado] * campoTamanho)

    return campo


def verificaJogoRodando():
    global jogoRodando

    if(jogoRodando == bool(0)):
        return False
    else:
        return True


def alterarValorCampo(linha, coluna, valor):
    global campoUsuario
    global campoSistema

    if(campoSistema[linha][coluna] != valorCampoNaoRevelado):
        return

    campoSistema[linha][coluna] = valor
    campoUsuario[linha][coluna] = valor


def revelarTodasAsBombas():
    global campoUsuario

    countLinha = 0

    for linha in campoSistema:
        countCelula = 0

        for celula in linha:

            if(celula == valorCampoBomba):
                campoUsuario[countLinha][countCelula] = valorCampoBomba

            countCelula += 1

        countLinha += 1


def restaCelulasNaoReveladas():
    for linha in campoSistema:
        for celula in linha:
            if(celula == valorCampoNaoRevelado):
                return True

    return False


def perderJogo():
    global jogoRodando
    jogoRodando = False

    revelarTodasAsBombas()

    finalizarJogo("Você perdeu!")


def ganharJogo():
    global jogoRodando
    jogoRodando = False

    finalizarJogo("Você ganhou!")


def finalizarJogo(mensagem):
    printarCampo(campoUsuario)
    print()
    print(mensagem)

    quit()


def verificaCasa(linha, coluna):
    if(verificaJogoRodando() == False):
        return

    valorCasa = campoSistema[linha][coluna]

    if(valorCasa == valorCampoNaoRevelado):
        bombasAdjacentes = getBombasAdjacentes(linha, coluna)

        if(bombasAdjacentes > 0):
            alterarValorCampo(linha, coluna, str(bombasAdjacentes))
        else:
            revelarCamposAdjacentes(linha, coluna)

        printarCampo(campoUsuario)

    elif valorCasa == valorCampoBomba:
        alterarValorCampo(linha, coluna, valorCampoBomba)
        perderJogo()


def getBombasAdjacentes(linha, coluna):
    bombasQuantidade = 0

    # linha superior
    if(linha > 0):
        # celula diagonal superior esquerda
        if(coluna > 0):  # verifica valor a esquerda
            if(campoSistema[linha-1][coluna - 1] == valorCampoBomba):
                bombasQuantidade += 1

        # celula superior
        if(campoSistema[linha - 1][coluna] == valorCampoBomba):
            bombasQuantidade += 1

        # celula diagonal superior direita
        if(coluna + 1 < campoTamanho):
            if(campoSistema[linha - 1][coluna + 1] == valorCampoBomba):
                bombasQuantidade += 1

    # celula esquerda
    if(coluna > 0):
        if(campoSistema[linha][coluna - 1] == valorCampoBomba):
            bombasQuantidade += 1

    # celula direita
    if(coluna + 1 < campoTamanho):
        if(campoSistema[linha][coluna + 1] == valorCampoBomba):
            bombasQuantidade += 1

    # linha inferior
    if(linha + 1 < campoTamanho):
        # celula diagonal inferior esquerda
        if(coluna > 0):  # verifica valor a esquerda
            if(campoSistema[linha + 1][coluna - 1] == valorCampoBomba):
                bombasQuantidade += 1

        # celula inferior
        if(campoSistema[linha + 1][coluna] == valorCampoBomba):
            bombasQuantidade += 1

        # celula diagonal inferior direita
        if(coluna + 1 < campoTamanho):
            if(campoSistema[linha + 1][coluna + 1] == valorCampoBomba):
                bombasQuantidade += 1

    return bombasQuantidade


def revelarCamposAdjacentes(linha, coluna):
    alterarValorCampo(linha, coluna, valorCampoRevelado)

    if(linha > 0):
        # celula diagonal superior esquerda
        if(coluna > 0):  # verifica valor a esquerda
            if(campoSistema[linha-1][coluna - 1] == valorCampoBomba):
                alterarValorCampo(linha-1, coluna-1, valorCampoBomba)
            else:
                alterarValorCampo(linha-1, coluna-1, valorCampoRevelado)

        # celula superior
        if(campoSistema[linha - 1][coluna] == valorCampoBomba):
            alterarValorCampo(linha-1, coluna, valorCampoBomba)
        else:
            alterarValorCampo(linha-1, coluna, valorCampoRevelado)

        # celula diagonal superior direita
        if(coluna + 1 < campoTamanho):
            if(campoSistema[linha - 1][coluna + 1] == valorCampoBomba):
                alterarValorCampo(linha-1, coluna+1, valorCampoBomba)
            else:
                alterarValorCampo(linha-1, coluna+1, valorCampoRevelado)

    # celula esquerda
    if(coluna > 0):
        if(campoSistema[linha][coluna - 1] == valorCampoBomba):
            alterarValorCampo(linha, coluna-1, valorCampoBomba)
        else:
            alterarValorCampo(linha, coluna-1, valorCampoRevelado)

    # celula direita
    if(coluna + 1 < campoTamanho):
        if(campoSistema[linha][coluna + 1] == valorCampoBomba):
            alterarValorCampo(linha, coluna+1, valorCampoBomba)
        else:
            alterarValorCampo(linha, coluna+1, valorCampoRevelado)

    # linha inferior
    if(linha + 1 < campoTamanho):
        # celula diagonal inferior esquerda
        if(coluna > 0):  # verifica valor a esquerda
            if(campoSistema[linha + 1][coluna - 1] == valorCampoBomba):
                alterarValorCampo(linha+1, coluna-1, valorCampoBomba)
            else:
                alterarValorCampo(linha+1, coluna-1, valorCampoRevelado)

        # celula inferior
        if(campoSistema[linha + 1][coluna] == valorCampoBomba):
            alterarValorCampo(linha+1, coluna, valorCampoBomba)
        else:
            alterarValorCampo(linha+1, coluna, valorCampoRevelado)

        # celula diagonal inferior direita
        if(coluna + 1 < campoTamanho):
            if(campoSistema[linha + 1][coluna + 1] == valorCampoBomba):
                alterarValorCampo(linha+1, coluna+1, valorCampoBomba)
            else:
                alterarValorCampo(linha+1, coluna+1, valorCampoRevelado)


jogoRodando = True

while True:
    try:
        campoTamanho = int(input("Insira o tamanho do campo: "))
    except ValueError:
        print('Valor inválido, tente novamente.')
        continue

    try:
        bombasQuantidade = int(input("Insira a quantidade de bombas: "))
    except ValueError:
        print('Valor inválido, tente novamente.')
        continue

    if(campoTamanho <= 0 or bombasQuantidade <= 0):
        print("Valores inválidos, tente novamente.")
        quit()

    valorCampoNaoRevelado = '#'
    valorCampoRevelado = ' '
    valorCampoBomba = 'B'

    campoUsuario = inicializarCampo()
    campoSistema = inicializarCampo()
    campoSistema = inserirBombas(campoSistema, bombasQuantidade)

    printarCampo(campoUsuario)

    while(restaCelulasNaoReveladas() == True and verificaJogoRodando() == True):
        print()
        try:
            valorSelecionadoLinha = int(input("Digite uma linha: "))
        except ValueError:
            print('Valor inválido, tente novamente.')
            continue

        try:
            valorSelecionadoColuna = int(input("Digite uma coluna: "))
        except ValueError:
            print('Valor inválido, tente novamente.')
            continue

        if(valorSelecionadoLinha < campoTamanho and valorSelecionadoLinha >= 0):
            if(valorSelecionadoColuna < campoTamanho and valorSelecionadoColuna >= 0):
                if(campoSistema[valorSelecionadoLinha][valorSelecionadoColuna] != valorCampoRevelado):
                    verificaCasa(valorSelecionadoLinha, valorSelecionadoColuna)
                else:
                    print('\nCélula inválida, tente novamente\n')
            else:
                print('\nCélula inválida, tente novamente\n')
        else:
            print('\nCélula inválida, tente novamente\n')

    if(restaCelulasNaoReveladas() == False):
        revelarTodasAsBombas()
        ganharJogo()
