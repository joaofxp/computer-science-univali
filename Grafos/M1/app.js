const inputListaDeConexoes = document.getElementById("inputListaDeConexoes");
const inputNumeroDeVertices = document.getElementById("inputNumeroDeVertices");
const inputDirigido = document.getElementById("inputDirigido");
const inputGrafo = document.getElementById("inputGrafo");

const inputBuscarGrafoOrigem = document.getElementById(
    "inputBuscarGrafoOrigem"
);
const inputBuscarGrafoDestino = document.getElementById(
    "inputBuscarGrafoDestino"
);
const inputCaminhoPercorrido = document.getElementById(
    "inputCaminhoPercorrido"
);
const inputTipoBusca = document.getElementById("inputTipoBusca");
const inputCaminhoPercorridoLetra = document.getElementById(
    "inputCaminhoPercorridoLetra"
);

let listaAdjacentes = [];
let caminhoPercorrido = [];
let buscarValorDestino = false;
let encontrouValorDestino = false;
let verticeDestino;

let grafo = [];
let vertices = 1;
let isInserindoConexoes = true;
let dirigido = 0;

const adicionarConexao = () => {
    const inputConexao = `
				<div class="input-conexao">
					<input type="text" placeholder="Origem">
					<input type="text" placeholder="Destino">
				</div>`;

    inputListaDeConexoes.insertAdjacentHTML("beforeend", inputConexao);
};

const atualizarGrafo = () => {
    vertices = parseInt(inputNumeroDeVertices.value);
    dirigido = inputDirigido.checked;

    const listaDeConexoes = Array.from(inputListaDeConexoes.children);

    reiniciarGrafo();

    listaDeConexoes.every((elemento) => {
        let conexao = Array.from(elemento.children);
        let origem = conexao[0].value;
        let destino = conexao[1].value;

        if (origem > 0 && destino > 0) {
            if (origem > vertices || destino > vertices) {
                alert(
                    "Foi cadastrado um vértice maior que o número de vértices, verifique."
                );
                return false;
            }

            origem = origem > 0 ? origem - 1 : origem;
            destino = destino > 0 ? destino - 1 : destino;

            grafo[origem][destino] = 1;

            if (!dirigido) {
                grafo[destino][origem] = 1;
            }

            return true;
        }
    });

    printarGrafo();
};

const reiniciarGrafo = () => {
    for (var i = 0; i < vertices; i++) {
        grafo[i] = new Array(vertices);
    }

    for (let i = 0; i < vertices; i++) {
        for (let j = 0; j < vertices; j++) {
            grafo[i][j] = 0;
        }
    }
};

const printarGrafo = () => {
    for (let i = 0; i < vertices; i++) {
        if (i === 0) {
            let colunaArray = [];
            for (let j = 1; j <= vertices; j++) {
                colunaArray.push(j);
            }

            inputGrafo.innerHTML = "";

            const colunas = `
			<span style="margin-left:15px">
				${colunaArray.join(" ")}
			</span>`;

            inputGrafo.insertAdjacentHTML("beforeend", colunas);
        }

        const linha = `
			<br>
			<span>
				${i + 1} [${grafo[i]}]
			</span>
		`;

        inputGrafo.insertAdjacentHTML("beforeend", linha);
    }
};

function getAllIndexes(arr, val) {
    var indexes = [],
        i = -1;
    while ((i = arr.indexOf(val, i + 1)) != -1) {
        indexes.push(i);
    }
    return indexes;
}

const criarListaDeAdjacencias = () => {
    listaAdjacentes = [];

    for (let i = 0; i < vertices; i++) {
        listaAdjacentes.push(getAllIndexes(grafo[i], 1));
    }
};

const realizarBusca = () => {
    let verticeBuscar = inputBuscarGrafoOrigem.value
        ? parseInt(inputBuscarGrafoOrigem.value)
        : 0;

    verticeDestino = inputBuscarGrafoDestino.value
        ? parseInt(inputBuscarGrafoDestino.value)
        : 0;

    encontrouValorDestino = false;

    if (verticeBuscar > vertices || verticeBuscar < 0) {
        alert("Valor inválido para a origem, verifique.");
        verticeBuscar = 0;
    }
    if (verticeDestino > vertices || verticeDestino < 0) {
        alert("Valor inválido para o destino, verifique.");
        verticeDestino = 0;
    }

    if (verticeDestino > 0) {
        buscarValorDestino = true;
        verticeDestino = verticeDestino > 0 ? verticeDestino - 1 : 0;
    } else {
        buscarValorDestino = false;
    }

    criarListaDeAdjacencias();

    caminhoPercorrido = [];
    inputCaminhoPercorridoLetra.innerHTML = "";

    if (inputTipoBusca.value === "DFS") {
        dfs(verticeBuscar);
    } else {
        bfs(verticeBuscar);
    }
};

const dfs = (
    verticeBuscar = 0,
    visitados = new Array(vertices).fill(false)
) => {
    verticeBuscar = verticeBuscar > 0 ? verticeBuscar - 1 : verticeBuscar;

    visitados[verticeBuscar] = true;
    caminhoPercorrido.push(verticeBuscar + 1);

    if (buscarValorDestino && verticeBuscar === verticeDestino) {
        encontrouValorDestino = true;
    }

    for (const i of listaAdjacentes[verticeBuscar]) {
        if (!visitados[i] && !encontrouValorDestino) {
            dfsBuscar(i, visitados);
        }
    }

    if (visitados.indexOf(false) > -1 && !encontrouValorDestino) {
        dfs(visitados.indexOf(false) + 1, visitados);
    } else {
        inputCaminhoPercorrido.innerHTML = caminhoPercorrido.join(" => ");
    }
};

const dfsBuscar = (vertice, visitados) => {
    visitados[vertice] = true;
    caminhoPercorrido.push(vertice + 1);

    if (buscarValorDestino && vertice === verticeDestino) {
        encontrouValorDestino = true;
    }

    for (const i of listaAdjacentes[vertice]) {
        if (!visitados[i] && !encontrouValorDestino) {
            dfsBuscar(i, visitados);
        }
    }
};

const bfs = (
    verticeBuscar = 0,
    visitados = new Array(vertices).fill(false)
) => {
    verticeBuscar = verticeBuscar > 0 ? verticeBuscar - 1 : verticeBuscar;

    fila = new Array();

    visitados[verticeBuscar] = true;
    fila.push(verticeBuscar);

    if (buscarValorDestino && verticeBuscar === verticeDestino) {
        encontrouValorDestino = true;
        caminhoPercorrido.push(verticeBuscar + 1);
    }

    while (fila.length != 0 && !encontrouValorDestino) {
        verticeBuscar = fila.shift();
        caminhoPercorrido.push(verticeBuscar + 1);

        if (buscarValorDestino && verticeBuscar === verticeDestino) {
            encontrouValorDestino = true;
        }

        for (const i of listaAdjacentes[verticeBuscar]) {
            if (!visitados[i] && !encontrouValorDestino) {
                visitados[i] = true;
                fila.push(i);
            }
        }
    }

    if (visitados.indexOf(false) > -1 && !encontrouValorDestino) {
        bfs(visitados.indexOf(false) + 1, visitados);
    } else {
        inputCaminhoPercorrido.innerHTML = caminhoPercorrido.join(" => ");
    }
};

const converterCaminhoParaLetra = () => {
    const alfabeto = "abcdefghijklmnopqrstuvwxyz";
    caminhoEmLetra = caminhoPercorrido.map((valor) => {
        return alfabeto[valor - 1];
    });

    inputCaminhoPercorridoLetra.innerHTML = caminhoEmLetra.join(" => ");
};

atualizarGrafo();
