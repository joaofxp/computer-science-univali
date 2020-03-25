function gerarServico(entidadeId) {
    if (!checarFilaPodeEntrar() && !pausar) {

        var entidadeTS = entidadesGeradas[entidadeId][1];
        var entidadeTSMiliSegundos = entidadeTS * 1000;
        var tempoClienteNaFila = entidadesGeradas[entidadeId][3];

        qtdServico++;

        inserirTabelaServico(entidadeTS);
        atualizarContadores();

        if (entidadesEmFila.length === 0 && tempoClienteNaFila === 0) {
            setTimeout(() => {
                criarSaida(entidadeTS);

                if (entidadesEmFila.length > 0)
                    proximoDaFila();


            }, entidadeTSMiliSegundos * multiplicador);
        } else {
            entidadesEmFila[entidadesEmFila.length] = entidadesGeradas[entidadeId];
            entidadesEmFilaStore[entidadeId] = entidadesGeradas[entidadeId];
        }
    }
}

function gerarChegada() {
    if (!checarLimiteChegadas() && !pausar) {
        qtdChegadas++;
        atualizarContadores();

        var novaEntidadeId = criarEntidade();
        var entidadeTEC = entidadesGeradas[novaEntidadeId][0];
        var entidadeTECMiliSegundos = entidadeTEC * 1000;

        inserirTabelaChegada(gerarValorChegada());
        // 
        chegadaAnimacao(entidadeTEC);

        setTimeout(() => {
            gerarServico(novaEntidadeId);
            gerarChegada();

        }, entidadeTECMiliSegundos * multiplicador);
    }
}

function executarSimulacao() {
    configurarSimulacao();

    configurarDistribuicoes().then(function () {
        configurarParametrosChegada();
        configurarParametrosServico();
    }).then(function () {
        iniciarSimulacao();
    })
}

$(document).ready(function () {
    $(".exportarTabela").hide();
});