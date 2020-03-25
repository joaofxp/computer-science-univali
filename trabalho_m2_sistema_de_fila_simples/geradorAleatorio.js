function gerarUniforme(numInicial, numFinal) {
    var numAleatorio = Math.random();
    var valor;

    valor = (numInicial + (numFinal - numInicial)) * numAleatorio;

    return valor;
}

function gerarTriangular(triangularValorMin, triangularValorModa, triangularValorMax) {
    var numAleatorio = Math.random();
    var valor;

    var calculoMenor = ((triangularValorModa - triangularValorMin) / (triangularValorMax - triangularValorMin));

    if (numAleatorio < calculoMenor) {
        valor = (triangularValorMin) + (Math.sqrt(numAleatorio * calculoMenor));
    } else
        valor = (triangularValorMax) - (Math.sqrt((1 - numAleatorio) * (triangularValorMax - triangularValorModa) * (triangularValorMax - triangularValorMin)));

    return valor;
}

function gerarExponencial(exponencialValorMedio, exponencialValorMinimo) {
    var numAleatorio = Math.random();
    var valor;

    valor = -exponencialValorMedio * Math.log(numAleatorio);

    return valor;
}

function gerarNormal(normalValorMedio, normalValorDeVariancia) {
    var numAleatorio1 = Math.random();
    var numAleatorio2 = Math.random();
    var valor;

    var Z = Math.sqrt((-2 * Math.log(numAleatorio1))) * Math.sin(2 * Math.PI * numAleatorio2);
    valor = normalValorMedio + normalValorDeVariancia * Z;

    return valor;
}

function gerarValorChegada() {
    if (tipoDistribuicaoChegada === "deterministico")
        return parametrosChegada;
    else
        return gerarNumAleatorio(tipoDistribuicaoChegada, ...parametrosChegada);
}

function gerarValorServico() {
    if (tipoDistribuicaoServico === "deterministico")
        return parametrosServico;
    else
        return gerarNumAleatorio(tipoDistribuicaoServico, ...parametrosServico);
}

function gerarNumAleatorio(tipo, ...parametros) {
    var valorGerado;

    switch (tipo) {
        case "uniforme":
            valorGerado = gerarUniforme(...parametros);
            break;
        case "triangular":
            valorGerado = gerarTriangular(...parametros);
            break;
        case "exponencial":
            valorGerado = gerarExponencial(...parametros);
            break;
        case "normal":
            valorGerado = gerarNormal(...parametros);
            break;
        default:
            erroForm();
            break;
    }
    return Number(valorGerado).toFixed(4);
}