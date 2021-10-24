const inputSituacaoInicial = document.querySelectorAll(
    "table#inputSituacaoInicial tbody tr td input"
);
const inputSituacaoFinal = document.querySelectorAll(
    "table#inputSituacaoFinal tbody tr td input"
);
const inputTipoBusca = document.getElementById("inputTipoBusca");
const inputResolver = document.getElementById("inputResolver");
const inputProximoPasso = document.getElementById("inputProximoPasso");
const inputAplicarSituacaoFinal = document.getElementById(
    "inputAplicarSituacaoFinal"
);

const valorNulo = 0;

function aplicarComoNovaSituacaoFinal() {
    const situacaoInicialValores = new Array();

    Array.from(inputSituacaoInicial).forEach((elemento) => {
        situacaoInicialValores.push(Number(elemento.value));
    });

    Array.from(inputSituacaoFinal).forEach((elemento, index) => {
        const novoValor =
            situacaoInicialValores[index] === valorNulo
                ? ""
                : situacaoInicialValores[index];
        elemento.value = novoValor;
    });
}

function resolver() {
    Array.from(inputSituacaoInicial).forEach((elemento) => {
        elemento.classList.add("passosCarregados");
        elemento.disabled = "true";
    });

    inputResolver.disabled = "true";
    inputTipoBusca.disabled = "true";
    inputAplicarSituacaoFinal.disabled = "true";

    inputProximoPasso.disabled = false;
}

resolver();
