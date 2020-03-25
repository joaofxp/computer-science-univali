function proximoDaFila() {
    if (pausar)
        return;

    var entidadeTS = entidadesEmFila[0][1];
    var entidadeTSMiliSegundos = entidadeTS * 1000;

    atualizarContadores();

    entidadesEmFila.shift();

    setTimeout(() => {
        criarSaida(entidadeTS);

        if (entidadesEmFila.length > 0)
            proximoDaFila();
    }, entidadeTSMiliSegundos * multiplicador);
}