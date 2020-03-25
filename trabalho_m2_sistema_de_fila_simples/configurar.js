function configurarSimulacao() {
    zerarTabelas();
    zerarContadores();
    atualizarContadores();

    pausar = false;

    limiteFila = parseFloat($("#limiteFila").val());
    limiteChegadas = parseFloat($("#limiteChegadas").val());
    limiteDuracaoReplicacao = parseFloat($("#limiteDuracaoReplicacao").val());

    multiplicador = parseFloat($("#multiplicador").val());
}

function configurarParametrosChegada() {
    switch (tipoDistribuicaoChegada) {
        case "deterministico":
            parametrosChegada = parseFloat($("#chegadaDeterministico").val());
            break;
        case "uniforme":
            parametrosChegada = [
                parseFloat($("#chegadaUniformeInicial").val()),
                parseFloat($("#chegadaUniformeFinal").val())
            ];
            break;
        case "triangular":
            parametrosChegada = [
                parseFloat($("#chegadaTriangularMin").val()),
                parseFloat($("#chegadaTriangularModa").val()),
                parseFloat($("#chegadaTriangularMax").val())
            ]
            break;
        case "exponencial":
            parametrosChegada = [
                parseFloat($("#chegadaExponencialValorMedio").val()),
                parseFloat($("#chegadaExponencialValorMinimo").val())
            ]
            break;
        case "normal":
            parametrosChegada = [
                parseFloat($("#chegadaNormalValorMedio").val()),
                parseFloat($("#chegadaNormalValorDeVariancia").val())
            ]
            break;
        default:
            erroForm();
            break;
    }
}

function configurarParametrosServico() {
    switch (tipoDistribuicaoServico) {
        case "deterministico":
            parametrosServico = parseFloat($("#servicoDeterministico").val());
            break;
        case "uniforme":
            parametrosServico = [
                parseFloat($("#servicoUniformeInicial").val()),
                parseFloat($("#servicoUniformeFinal").val())
            ];
            break;
        case "triangular":
            parametrosServico = [
                parseFloat($("#servicoTriangularMin").val()),
                parseFloat($("#servicoTriangularModa").val()),
                parseFloat($("#servicoTriangularMax").val())
            ]
            break;
        case "exponencial":
            parametrosServico = [
                parseFloat($("#servicoExponencialValorMedio").val()),
                parseFloat($("#servicoExponencialValorMinimo").val())
            ]
            break;
        case "normal":
            parametrosServico = [
                parseFloat($("#servicoNormalValorMedio").val()),
                parseFloat($("#servicoNormalValorDeVariancia").val())
            ]
            break;
        default:
            erroForm();
            break;
    }
}

function configurarDistribuicoes() {
    return new Promise(function (resolve, reject) {
        tipoDistribuicaoChegada = $("#pills-chegada-tab a.nav-link.active")[0].innerText;
        tipoDistribuicaoChegada = String(removerAcentos(tipoDistribuicaoChegada)).toLowerCase();

        tipoDistribuicaoServico = $("#pills-servico-tab a.nav-link.active")[0].innerText;
        tipoDistribuicaoServico = String(removerAcentos(tipoDistribuicaoServico)).toLowerCase();

        resolve(true);
    });
}
