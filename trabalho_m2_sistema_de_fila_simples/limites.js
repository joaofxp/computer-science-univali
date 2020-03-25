
function checarLimiteChegadas() {
    if (limiteChegadas != 0 && qtdChegadas >= limiteChegadas) {
        return true;
    }

    return false;
}

function checarLimiteDuracaoReplicacao() {
    if (limiteDuracaoReplicacao != 0 && duracaoReplicacao >= limiteDuracaoReplicacao) {
        pausarSimulacao();
    }
}

function checarFilaPodeEntrar() {
    if (limiteFila != 0 && limiteFila === entidadesEmFila.length)
        return true;

    return false;
}