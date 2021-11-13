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
const inputPassosDiv = document.getElementById("inputPassosDiv");
const inputPassosQuantidade = document.getElementById("inputPassosQuantidade");
const inputPassoAtual = document.getElementById("inputPassoAtual");

const valorNulo = 0;

let listaValoresIniciais = Array.from(inputSituacaoInicial).map((el) =>
    Number(el.value)
);

let listaValoresFinais = Array.from(inputSituacaoFinal).map((el) =>
    Number(el.value)
);

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

    listaValoresFinais = Array.from(inputSituacaoFinal).map((el) =>
        Number(el.value)
    );
}

function isArraysIguais(a, b) {
    if (a.length != b.length) {
        return false;
    } else {
        for (var i = 0; i < a.length; i++) {
            if (a[i] != b[i]) {
                return false;
            }
        }
        return true;
    }
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

    let listaValoresIniciaisPuzzle = [
        [
            listaValoresIniciais[0],
            listaValoresIniciais[1],
            listaValoresIniciais[2],
        ],
        [
            listaValoresIniciais[3],
            listaValoresIniciais[4],
            listaValoresIniciais[5],
        ],
        [
            listaValoresIniciais[6],
            listaValoresIniciais[7],
            listaValoresIniciais[8],
        ],
    ];

    let listaValoresFinaisPuzzle = [
        [listaValoresFinais[0], listaValoresFinais[1], listaValoresFinais[2]],
        [listaValoresFinais[3], listaValoresFinais[4], listaValoresFinais[5]],
        [listaValoresFinais[6], listaValoresFinais[7], listaValoresFinais[8]],
    ];

    passos = bfs(listaValoresIniciaisPuzzle, listaValoresFinaisPuzzle);
    console.log("------");
    passos.forEach((el, index) => {
        console.log("Passo -> ", index + 1);
        el.forEach((el2) => {
            console.log(el2);
        });
        console.log("------");
    });
    passoPosicao = 0;

    proximoPasso();
}

let passos;
let passoPosicao = 0;

function proximoPasso() {
    let movimentoAtual = passos[passoPosicao].flat();

    Array.from(inputSituacaoInicial).forEach((elemento, index) => {
        const novoValor =
            movimentoAtual[index] === valorNulo ? "" : movimentoAtual[index];
        elemento.value = novoValor;
    });

    mostrarPassos();
    passoPosicao++;
    if (passoPosicao === passos.length) {
        inputProximoPasso.disabled = true;
    }
}

function mostrarPassos() {
    inputPassosDiv.style.display = "block";
    inputPassosQuantidade.innerText = passos.length;
    inputPassoAtual.innerText = passoPosicao + 1;
}

//chamar BFS retorna um array com todos os movimentos possiveis, apenas para printar os arrays
function bfs(situacaoInicial, situacaoFinal) {
    console.log(
        "🚀 ~ file: app.js ~ line 87 ~ bfs ~ start, end",
        situacaoInicial,
        situacaoFinal
    );
    let visitados = [];
    let bancoDeMovimentos = [[situacaoInicial]];
    let movimentos = [];

    let count = 1000;
    const limiteLaço = 30000;

    for (let i = 0; i < limiteLaço; i++) {
        if (i === count) {
            console.log(count);
            count += 1000;
        }

        movimentos = bancoDeMovimentos.shift();
        // bancoDeMovimentos.shift();
        let ultimoMovimento = movimentos[movimentos.length - 1];

        if (isArrayInArray(visitados, ultimoMovimento)) {
            continue;
        }

        const movimentosPossiveis = getMovimentosPossiveis(ultimoMovimento);

        for (let j = 0; j < movimentosPossiveis.length; j++) {
            const movimento = movimentosPossiveis[j];

            if (isArrayInArray(visitados, movimento)) {
                continue;
            }

            movimentosTemp = Array.from(movimentos);
            movimentosTemp.push(movimento);
            bancoDeMovimentos.push(movimentosTemp);
        }

        visitados.push(ultimoMovimento);

        let arraysIguais = true;

        ultimoMovimento.forEach((el, index) => {
            if (!isArraysIguais(el, situacaoFinal[index])) {
                arraysIguais = false;
            }
        });

        if (arraysIguais) {
            console.log("break!");
            console.log("count", count);
            break;
        }
    }

    console.log("returning");
    return movimentos;
}

function isArrayInArray(arr, item) {
    var item_as_string = JSON.stringify(item);

    var contains = arr.some(function (ele) {
        return JSON.stringify(ele) === item_as_string;
    });
    return contains;
}

function getMovimentosPossiveis(tabuleiro) {
    movimentos = [];

    let linha = 9;
    let coluna = 9;

    tabuleiro.map((el, i) => {
        if (el.indexOf(0) >= 0) {
            linha = i;
            coluna = el.indexOf(0);
        }
    });

    //mover pra baixo
    if (linha < 2) {
        let novoTabuleiro = JSON.parse(JSON.stringify(tabuleiro));
        let valorAnterior = novoTabuleiro[linha + 1][coluna];

        novoTabuleiro[linha + 1][coluna] = novoTabuleiro[linha][coluna];
        novoTabuleiro[linha][coluna] = valorAnterior;

        movimentos.push(novoTabuleiro);
    }

    //mover pra cima
    if (linha > 0) {
        let novoTabuleiro = JSON.parse(JSON.stringify(tabuleiro));
        let valorAnterior = novoTabuleiro[linha - 1][coluna];

        novoTabuleiro[linha - 1][coluna] = novoTabuleiro[linha][coluna];
        novoTabuleiro[linha][coluna] = valorAnterior;

        movimentos.push(novoTabuleiro);
    }

    //mover pra direita
    if (coluna < 2) {
        let novoTabuleiro = JSON.parse(JSON.stringify(tabuleiro));
        let valorAnterior = novoTabuleiro[linha][coluna + 1];

        novoTabuleiro[linha][coluna + 1] = novoTabuleiro[linha][coluna];
        novoTabuleiro[linha][coluna] = valorAnterior;

        movimentos.push(novoTabuleiro);
    }

    //mover pra esquerda
    if (coluna > 0) {
        let novoTabuleiro = JSON.parse(JSON.stringify(tabuleiro));
        let valorAnterior = novoTabuleiro[linha][coluna - 1];

        novoTabuleiro[linha][coluna - 1] = novoTabuleiro[linha][coluna];
        novoTabuleiro[linha][coluna] = valorAnterior;

        movimentos.push(novoTabuleiro);
    }

    return movimentos;
}
