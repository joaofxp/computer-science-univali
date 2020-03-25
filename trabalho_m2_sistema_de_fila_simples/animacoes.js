function criarSaida(duracaoEmSegundos) {
    if (pausar)
        return;
    qtdSaidas++;
    atualizarContadores();

    saidaAnimacao(duracaoEmSegundos)
}

function chegadaAnimacao(duracaoEmSegundos) {
    animacaoEntidade(duracaoEmSegundos, "chegada");
}

function saidaAnimacao(duracaoEmSegundos) {
    animacaoEntidade(duracaoEmSegundos, "saida");
}

function animacaoEntidade(duracaoEmSegundos, tipo) {
    var duracaoEmMiliSegundos = duracaoEmSegundos * 1000;

    if (tipo != "chegada" && tipo != "saida")
        alert("ERRO NA ANIMAÇÃO");

    var newDiv = document.createElement("div");
    newDiv.classList.add(tipo);
    newDiv.setAttribute("style", "animation: animacao_" + tipo + " " + duracaoEmSegundos + "s linear")

    document.getElementById("conteudo").appendChild(newDiv);
    destroyAfterTime(newDiv, duracaoEmMiliSegundos * 0.95);
}