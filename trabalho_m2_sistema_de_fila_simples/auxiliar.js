function destroyAfterTime(element, time) {
    setTimeout(() => {
        element.remove();
    }, time * multiplicador);
}

function removerAcentos(text) {
    return text.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
}

const reducer = (accumulator, currentValue) => accumulator + currentValue;

function erroForm() {
    alert("Campos incorretos, tente novamente.");
    $(".conteudoGerador").html("");
    $(".exportarTabela").hide();
}

function pausarSimulacao() {
    pausar = !pausar;
}

function iniciarReplicacao() {
    if (pausar === true)
        return;

    setTimeout(() => {
        duracaoReplicacao++;

        $(".duracaoReplicacao").html(duracaoReplicacao);

        checarLimiteDuracaoReplicacao();
        iniciarReplicacao();
    }, 1000 * multiplicador);
}

function iniciarChegadas() {
    gerarChegada();
    iniciarReplicacao();
}

function iniciarSimulacao() {
    iniciarChegadas();
}

function criarEntidade() {
    var valorChegadaGerado = parseFloat(gerarValorChegada());
    var valorServicoGerado = parseFloat(gerarValorServico());

    var id = entidadesGeradas.length;
    var tempoInicioServico;
    var tempoClienteNaFila;
    var tempoClienteNoSistema;
    var tempoLivreProcesso;

    if (tempoFinalServico === 0) {
        tempoRelogio = valorChegadaGerado;
        tempoInicioServico = valorChegadaGerado; // 1
        tempoLivreProcesso = valorChegadaGerado;
    } else {
        tempoRelogio += valorChegadaGerado;
        tempoInicioServico = Math.max(tempoFinalServico, tempoRelogio);
        tempoLivreProcesso = tempoInicioServico - tempoFinalServico;
    }
    tempoClienteNaFila = ((tempoInicioServico - tempoRelogio) > 0) ? (tempoInicioServico - tempoRelogio) : 0;
    tempoFinalServico = tempoInicioServico + valorServicoGerado;
    tempoClienteNoSistema = tempoClienteNaFila + valorServicoGerado;

    entidadesGeradas[id] = [
        valorChegadaGerado, //0
        valorServicoGerado, //1
        id, //2
        tempoClienteNaFila, //3
        tempoClienteNoSistema, //4
        tempoLivreProcesso, //5
        tempoFinalServico, //6
        entidadesEmFila.length, //7
        // tempoInicioServico,             //8
    ];

    qtdFilaMaxima = Math.max(qtdFilaMaxima, (tempoClienteNaFila > 0) ? entidadesEmFila.length + 1 : entidadesEmFila.length);

    return id;
}

function calcularTempoMedioEmFila() {
    var valor = 0;
    for (const key in entidadesGeradas) {
        if (entidadesGeradas.hasOwnProperty(key)) {
            valor += entidadesGeradas[key][3];
        }
    }
    valor /= entidadesGeradas.length;
    return Number(valor).toFixed(2);

}

function calcularTempoMedioNoSistema() {
    var valor = 0;
    for (const key in entidadesGeradas) {
        if (entidadesGeradas.hasOwnProperty(key)) {
            valor += entidadesGeradas[key][4];
        }
    }
    valor /= entidadesGeradas.length;
    return Number(valor).toFixed(2);
}

function calcularTempoTotalDoSistema() {
    var valor = 0;
    for (const key in entidadesGeradas) {
        if (entidadesGeradas.hasOwnProperty(key)) {
            valor += entidadesGeradas[key][4];
        }
    }
    return Number(valor).toFixed(2);
}

function calcularNumMedioEntidadesNaFila() {
    var valor = 0;
    var soma = 0;

    var newArray = [];

    for (const key in entidadesGeradas) {
        if (entidadesGeradas.hasOwnProperty(key)) {
            newArray.push(entidadesGeradas[key][7]);
        }
    }

    newArray = [...new Set(newArray)];

    soma = newArray.reduce(reducer);

    for (const key in newArray) {
        if (newArray.hasOwnProperty(key)) {
            var numero = newArray[key];
            var peso = 0;

            for (const key2 in entidadesGeradas) {
                if (entidadesGeradas.hasOwnProperty(key2)) {
                    var numero2 = entidadesGeradas[key2][7];

                    if (numero === numero2)
                        peso++;
                }
            }

            valor += (numero * peso);
        }
    }

    valor /= entidadesGeradas.length;
    return Number(valor).toFixed(2);
}

function calcularTaxaOcupacao() {
    var valor = 0;
    for (const key in entidadesGeradas) {
        if (entidadesGeradas.hasOwnProperty(key)) {
            valor += entidadesGeradas[key][5];
        }
    }
    valor /= entidadesGeradas[entidadesGeradas.length - 1][6];
    return Number(1 - valor).toFixed(2);
}