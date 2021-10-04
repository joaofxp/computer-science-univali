// M1.1
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
const inputGrafoDesenhado = document.getElementById("inputGrafoDesenhado");
const inputResultado = document.getElementById("inputResultado");
const inputNumeroCromatico = document.getElementById("inputNumeroCromatico");
const inputGrafoPlanar = document.getElementById("inputGrafoPlanar");

let listaVertices = [];
let listaVerticesAdjacentes = [];
let caminhoPercorrido = [];
let buscarValorDestino = false;
let encontrouValorDestino = false;
let verticeDestino;

let grafo = [];
let grafoDesenhado;
let vertices = 1;
let arestas = 0;
let isInserindoConexoes = true;
let dirigido = 0;
let coresGrafo = [
    "green",
    "blue",
    "red",
    "pink",
    "yellow",
    "purple",
    "orange",
    "lightgray",
    "lightgreen",
    "lightblue",
];

class Vertice {
    constructor(titulo) {
        this.titulo = titulo;
        this.cor = "#000";
    }

    setTitulo(titulo) {
        this.titulo = titulo;
    }

    setCor(cor) {
        this.cor = cor;
    }

    getTitulo() {
        return this.titulo;
    }

    getCor() {
        return this.cor;
    }
}

function adicionarConexao() {
    const inputConexao = `
				<div class="input-conexao">
					<input type="text" placeholder="Origem">
					<input type="text" placeholder="Destino">
					<button type="button" class="btn btn-sm btn-danger mt-1 remover" onclick="removerConexao(this)">X</button>
				</div>`;

    inputListaDeConexoes.insertAdjacentHTML("beforeend", inputConexao);
}

function removerConexao(elemento) {
    elemento.parentElement.remove();
}

function atualizarGrafo() {
    vertices = parseInt(inputNumeroDeVertices.value);
    dirigido = inputDirigido.checked;

    const listaDeConexoes = Array.from(inputListaDeConexoes.children);

    criarVertices();

    reiniciarGrafo();

    listaDeConexoes.every((elemento) => {
        let conexao = Array.from(elemento.children);
        let origem = conexao[0].value;
        let destino = conexao[1].value;

        origem = isNaN(parseInt(origem)) ? letraParaNumero(origem) + 1 : origem;
        destino = isNaN(parseInt(destino))
            ? letraParaNumero(destino) + 1
            : destino;

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

            if (dirigido) {
                grafoDesenhado.addEdge(
                    numeroParaLetra(origem),
                    numeroParaLetra(destino),
                    {
                        directed: true,
                    }
                );
            } else {
                grafoDesenhado.addEdge(
                    numeroParaLetra(origem),
                    numeroParaLetra(destino)
                );
            }

            if (!dirigido) {
                grafo[destino][origem] = 1;
                // arestas++;
            }

            return true;
        }
    });

    arestas = 0;

    grafo.map((el) =>
        el.map((el2) => {
            if (el2 === 1) arestas++;
        })
    );

    if (!dirigido) {
        arestas /= 2;
    }

    printarGrafo();
}

function reiniciarGrafo() {
    inputCaminhoPercorrido.innerText = "";
    inputCaminhoPercorridoLetra.innerText = "";
    inputResultado.innerText = "";

    grafoDesenhado = new Graph();

    for (var i = 0; i < vertices; i++) {
        grafo[i] = new Array(vertices);
    }

    for (const el in listaVertices) {
        if (Object.hasOwnProperty.call(listaVertices, el)) {
            const element = listaVertices[el];

            grafoDesenhado.addNode(element.getTitulo(), {
                // label: element.getTitulo().toUpperCase(),
                color: element.getCor(),
            });
        }
    }

    for (let i = 0; i < vertices; i++) {
        for (let j = 0; j < vertices; j++) {
            grafo[i][j] = 0;
        }
    }
}

function printarGrafo() {
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

    inputGrafoDesenhado.innerHTML = "";

    var layouter = new Graph.Layout.Spring(grafoDesenhado);

    layouter.layout();

    var renderer = new Graph.Renderer.Raphael(
        inputGrafoDesenhado,
        grafoDesenhado,
        600,
        400
    );
    renderer.draw();

    // transitiveClosure(grafo);
}

function getTodosIndices(arr, val) {
    var indices = [],
        i = -1;
    while ((i = arr.indexOf(val, i + 1)) != -1) {
        indices.push(i);
    }
    return indices;
}

function getListaDeAdjacencias() {
    listaVerticesAdjacentes = [];

    for (let i = 0; i < vertices; i++) {
        listaVerticesAdjacentes.push(getTodosIndices(grafo[i], 1));
    }
}

function realizarBusca() {
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

    getListaDeAdjacencias();

    caminhoPercorrido = [];
    inputCaminhoPercorridoLetra.innerHTML = "";
    inputResultado.innerText = "";

    if (inputTipoBusca.value === "DFS") {
        dfs(verticeBuscar);
    } else {
        bfs(verticeBuscar);
    }
}

function dfs(
    verticeBuscar = 0,
    visitados = new Array(vertices).fill(false),
    verificandoConectividade = false
) {
    verticeBuscar = verticeBuscar > 0 ? verticeBuscar - 1 : verticeBuscar;

    visitados[verticeBuscar] = true;
    caminhoPercorrido.push(verticeBuscar + 1);

    if (buscarValorDestino && verticeBuscar === verticeDestino) {
        encontrouValorDestino = true;
    }

    for (const i of listaVerticesAdjacentes[verticeBuscar]) {
        if (!visitados[i] && !encontrouValorDestino) {
            dfsBuscar(i, visitados);
        }
    }

    if (visitados.indexOf(false) > -1 && !encontrouValorDestino) {
        if (verificandoConectividade) {
            return caminhoPercorrido;
        }

        dfs(visitados.indexOf(false) + 1, visitados);
    } else {
        if (verificandoConectividade) {
            return caminhoPercorrido;
        }

        inputCaminhoPercorrido.innerHTML = caminhoPercorrido.join(" => ");
    }
}

function dfsBuscar(vertice, visitados) {
    visitados[vertice] = true;
    caminhoPercorrido.push(vertice + 1);

    if (buscarValorDestino && vertice === verticeDestino) {
        encontrouValorDestino = true;
    }

    for (const i of listaVerticesAdjacentes[vertice]) {
        if (!visitados[i] && !encontrouValorDestino) {
            dfsBuscar(i, visitados);
        }
    }
}

function bfs(verticeBuscar = 0, visitados = new Array(vertices).fill(false)) {
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

        for (const i of listaVerticesAdjacentes[verticeBuscar]) {
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
}

function converterCaminhoParaLetra() {
    const alfabeto = "abcdefghijklmnopqrstuvwxyz";

    caminhoEmLetra = caminhoPercorrido.map((valor) => {
        return alfabeto[valor - 1];
    });

    inputCaminhoPercorridoLetra.innerHTML = caminhoEmLetra.join(" => ");
}

function numeroParaLetra(numero) {
    const alfabeto = "abcdefghijklmnopqrstuvwxyz";
    return alfabeto[numero];
}

function letraParaNumero(letra) {
    const alfabeto = "abcdefghijklmnopqrstuvwxyz";
    return alfabeto.indexOf(letra);
}

// ----------------
atualizarGrafo();
// ----------------

// M1.2

function verificarConectividade() {
    const verificaGrafoConexo = verificarSeGrafoConexo();
    const grafoConexo = verificaGrafoConexo[0];

    inputResultado.innerText = grafoConexo
        ? "Grafo é conexo."
        : "Grafo não é conexo.";

    if (!grafoConexo) {
        // const subGrafosFortementeConexos = verificaGrafoConexo[1].join(" | ");
        const subGrafosFortementeConexos = arrayDeNumerosParaArrayDeLetras(
            verificaGrafoConexo[1]
        ).join(" | ");

        inputResultado.innerText += ` \nSub-grafos fortemente conexos do grafo: \n ${subGrafosFortementeConexos}`;
    }
}

function arrayDeNumerosParaArrayDeLetras(arrayDeNumeros) {
    const arrayDeLetras = arrayDeNumeros.map(
        (el) => "[" + el.map((val) => numeroParaLetra(val - 1)) + "]"
    );

    return arrayDeLetras;
}

function verificarSeGrafoConexo() {
    let interseccaoFechos = calcularInterseccaoFechosDiretoEInverso();

    const isGrafoConexo = interseccaoFechos.length === vertices ? true : false;

    const subGrafosFortementeConexos = new Array();

    if (!isGrafoConexo) {
        subGrafosFortementeConexos.push(interseccaoFechos);

        let verticesTemp = vertices;

        verticesTemp -= interseccaoFechos.length;

        do {
            const proximoVerticeParaChecar = getProximoVerticeDisponivel(
                subGrafosFortementeConexos
            );

            interseccaoFechos = calcularInterseccaoFechosDiretoEInverso(
                proximoVerticeParaChecar
            );

            subGrafosFortementeConexos.push(interseccaoFechos);

            verticesTemp -= interseccaoFechos.length;
        } while (verticesTemp > 0);
    }

    return [isGrafoConexo, subGrafosFortementeConexos];
}

function calcularInterseccaoFechosDiretoEInverso(vertice = 1) {
    getListaDeAdjacencias();

    caminhoPercorrido = [];

    const fechoTransitivoDireto = dfs(vertice, undefined, true);

    const listaAdjacentesAnterior = listaVerticesAdjacentes;

    listaVerticesAdjacentes = getListaAdjacentesTransposta();

    caminhoPercorrido = [];

    const fechoTransitivoInverso = dfs(vertice, undefined, true);

    listaVerticesAdjacentes = listaAdjacentesAnterior;

    let interseccaoFechos = new Set();

    interseccaoFechos = fechoTransitivoDireto.filter((valor) =>
        fechoTransitivoInverso.includes(valor)
    );

    return interseccaoFechos;
}

function getProximoVerticeDisponivel(subGrafosFortementeConexos) {
    for (let i = 1; i <= vertices; i++) {
        if (!subGrafosFortementeConexos.flat().includes(i)) {
            return i;
        }
    }
}

function getListaAdjacentesTransposta() {
    let listaAdjacentesTransposta = Array.from(
        Array(vertices),
        () => new Array()
    );

    for (let v = 0; v < vertices; v++) {
        // Percorre por todos vertices adjacentes a esse vertice

        for (let i of listaVerticesAdjacentes[v].values()) {
            listaAdjacentesTransposta[i].push(v);
        }
    }

    return listaAdjacentesTransposta;
}

//M2.1
function criarVertices() {
    if (listaVertices.length === vertices) return;

    listaVertices = [];

    for (let i = 0; i < vertices; i++) {
        const novoVertice = new Vertice(numeroParaLetra(i));
        listaVertices.push(novoVertice);
    }
}

function colorirGrafo() {
    if (!verificarSeGrafoConexo()[0]) {
        alert("Não é um grafo conexo, verifique.");
        // return;
    }

    if (!verificarSeGrafoPlanar()) {
        alert("Não é um grafo planar, verifique.");
        // return;
    }

    function marcarCoresIndisponiveis(contador) {
        for (let vertice of listaVerticesAdjacentes[contador]) {
            if (_verticesColoridos[vertice] != -1) {
                _coreDisponiveis[_verticesColoridos[vertice]] = false;
            }
        }
    }
    function getProximaCorDisponivel() {
        let proximaCorDisponivel;

        for (j = 0; j < vertices; j++) {
            if (_coreDisponiveis[j]) {
                proximaCorDisponivel = j;
                break;
            }
        }

        return proximaCorDisponivel;
    }
    function reiniciarArrayDeCoresDisponiveis(arrayDeCores) {
        return arrayDeCores.fill(true);
    }
    function colorirVertice(vertice, cor) {
        _verticesColoridos[vertice] = cor;
        listaVertices[vertice].setCor(coresGrafo[cor]);
        numeroCromatico = Math.max(numeroCromatico, cor + 1);
    }
    function inicializarColoracao() {
        for (let i = 1; i < vertices; i++) {
            _coreDisponiveis =
                reiniciarArrayDeCoresDisponiveis(_coreDisponiveis);

            marcarCoresIndisponiveis(i);
            colorirVertice(i, getProximaCorDisponivel());
        }
    }

    getListaDeAdjacencias();

    let _verticesColoridos = new Array(vertices).fill(-1);
    let _coreDisponiveis = new Array(vertices).fill(true);
    let numeroCromatico = 1;

    _verticesColoridos[0] = 0;
    listaVertices[0].setCor(coresGrafo[0]);

    inicializarColoracao();

    atualizarGrafo();

    inputNumeroCromatico.innerText = numeroCromatico;
}

function verificarSeGrafoPlanar() {
    const regioes = getRegioes();
    let isGrafoPlanar = false;

    existeCicloDeTres = false;

    for (let i = 0; i < vertices; i++) {
        if (verificaSeExisteCicloDeTres(i)) {
            existeCicloDeTres = true;
            break;
        }
    }

    if (vertices - arestas + regioes === 2) {
        if (vertices >= 3) {
            if (arestas <= 3 * vertices - 6) {
                if (!existeCicloDeTres) {
                    if (arestas <= 2 * vertices - 4) {
                        isGrafoPlanar = true;
                    }
                } else {
                    isGrafoPlanar = true;
                }
            }
        }
    }

    inputGrafoPlanar.innerText = isGrafoPlanar ? "Sim" : "Não";

    return isGrafoPlanar;
}

function verificaSeExisteCicloDeTres(
    verticeBuscar = 0,
    visitados = new Array(vertices).fill(false)
) {
    visitados[verticeBuscar] = true;

    getListaDeAdjacencias();

    existeCicloDeTres = false;

    for (const i of listaVerticesAdjacentes[verticeBuscar]) {
        if (!visitados[i]) {
            visitados[i] = true;

            for (const j of listaVerticesAdjacentes[i]) {
                if (!visitados[j] && j !== verticeBuscar) {
                    for (const k of listaVerticesAdjacentes[j]) {
                        if (visitados[k] && k === verticeBuscar) {
                            existeCicloDeTres = true;
                            return existeCicloDeTres;
                        }
                    }
                }
            }
        }
    }

    return existeCicloDeTres;
}

function getRegioes() {
    return arestas + 2 - vertices;
}

colorirGrafo();
