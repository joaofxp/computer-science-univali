function zerarContadores() {
    qtdChegadas = 0;
    qtdSaidas = 0;
    qtdEmFila = 0;
    qtdFilaMaxima = 0;
    qtdEntidadesSimultaneasMaxima = 0;
    qtdTempoMedioNoSistema = 0;
    qtdTempoDoSistema = 0;
    qtdTempoMedioEntidadeFila = 0;
    qtdTaxaOcupacao = 0;

    qtdNumMedioEntidadesNaFila = 0;

    multiplicador = 1;

    duracaoReplicacao = parseFloat(0);

    valoresGeradosChegada = []
    valoresGeradosServico = [];

    entidadesGeradas = [];
    entidadesEmFila = [];
    entidadesEmFilaStore = [];
    valoresChegadaGerados = [];
    valoresServicoGerados = [];

    emServico = false;

    tempoRelogio = 0;
    tempoFinalServico = 0;

    $(".qtdTaxaOcupacao").html("0");
    $(".qtdNumMedioEntidadesNaFila").html("0");

    $(".qtdTempoDoSistema").html("0");
    $(".qtdTempoMedioEntidadeFila").html("0");
    $(".qtdTempoMedioNoSistema").html("0");
}

function atualizarContadores() {
    $(".qtdChegadas").html(qtdChegadas);
    $(".qtdSaidas").html(qtdSaidas);

    qtdEntidadesSimultaneasMaxima = Math.max(qtdEntidadesSimultaneasMaxima, (qtdChegadas - qtdSaidas));
    $(".qtdEntidadesSimultaneasMaxima").html(qtdEntidadesSimultaneasMaxima);

    if (entidadesEmFila.length > 0) {
        // qtdFilaMaxima = Math.max(qtdFilaMaxima, (entidadesEmFila.length));
        $(".qtdNumMedioEntidadesNaFila").html(calcularNumMedioEntidadesNaFila());
    }
    if (entidadesGeradas.length > 1) {
        $(".qtdTaxaOcupacao").html(calcularTaxaOcupacao());
    }

    $(".qtdFilaMaxima").html(qtdFilaMaxima);

    $(".qtdEmFila").html(entidadesEmFila.length);

    $(".qtdTempoDoSistema").html(calcularTempoTotalDoSistema());
    $(".qtdTempoMedioEntidadeFila").html(calcularTempoMedioEmFila());
    $(".qtdTempoMedioNoSistema").html(calcularTempoMedioNoSistema());

    if (qtdChegadas === qtdSaidas)
        pausarSimulacao();
}