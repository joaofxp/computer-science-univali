const inputListaDeConexoes = document.getElementById("inputListaDeConexoes");
const inputGrafoDesenhado = document.getElementById("inputGrafoDesenhado");
const posicaoXNodoInicio = 0;
const posicaoYNodoInicio = 100;
const posicaoXNodoFim = 1000;
const posicaoYNodoFim = 150;
const espacoXEntreNodos = 100;
const espacoYEntreNodos = 100;
const nodoInicioNome = "nodoInicio";
const nodoFimNome = "nodoFim";

let atividades = [];

function renderer(r, n) {
    var label = r.text(n.posicaoX + 30, n.posicaoY + 25, n.label).attr({
        fill: "#000",
        "font-size": "12px",
        "font-weight": "bold",
        "fill-opacity": "1",
    });
    var folga = r.text(n.posicaoX + 30, n.posicaoY + 60, n.folga || "0").attr({
        fill: "#000",
        "font-size": "13px",
        "font-weight": "bold",
        "fill-opacity": "1",
    });

    var set = r
        .set()
        .push(
            r.rect(n.posicaoX, n.posicaoY, 60, 50).attr({
                fill: n.fill,
                "stroke-width": 2,
                r: 5,
                "fill-opacity": "0.2",
            })
        )
        .push(folga)
        .push(label);

    return set;
}

function inicializar() {
    configurarGrafo();
    desenharGrafo();
}

function configurarGrafo() {
    inputGrafoDesenhado.innerHTML = "";
    grafoDesenhado = new Graph();

    grafoDesenhado.addNode(nodoInicioNome, {
        label: "Inicio",
        fill: "gray",
        posicaoX: posicaoXNodoInicio,
        posicaoY: posicaoYNodoInicio,
        folga: ".",
        render: renderer,
    });

    grafoDesenhado.addNode(nodoFimNome, {
        label: "Fim",
        fill: "gray",
        posicaoX: posicaoXNodoFim,
        posicaoY: posicaoYNodoFim,
        folga: ".",
        render: renderer,
    });

    var layouter = new Graph.Layout.Spring(grafoDesenhado);

    layouter.layout();
}

function desenharGrafo() {
    var renderer = new Graph.Renderer.Raphael(
        inputGrafoDesenhado,
        grafoDesenhado,
        1100,
        400
    );
    renderer.draw();
}

function removerConexao(elemento) {
    elemento.parentElement.remove();
}

function adicionarAtividade() {
    const inputConexao = `
				<div class="input-conexao">
					<input type="text" placeholder="Atividade" value="" pattern="[0-9]+">
					<input type="text" placeholder="Duração" value="" pattern="[0-9]+">
					<input type="text" placeholder="Precedente" value="" pattern="[0-9]+">
					<button type="button" class="btn btn-sm btn-danger mt-1 remover" onclick="removerConexao(this)">X</button>
				</div>`;

    inputListaDeConexoes.insertAdjacentHTML("beforeend", inputConexao);
}

class Atividade {
    constructor(id, duracao, precedente) {
        this.id = id;
        this.duracao = duracao;
        this.precedente = precedente;
        this.seguinte = 0;
        this.posicaoX = 0;
        this.posicaoY = 0;
        this.primeiroTempoInicio = 0;
        this.primeiroTempoFim = 0;
        this.ultimoTempoInicio = 0;
        this.ultimoTempoFim = 0;
        this.folga = 0;
    }

    getId() {
        return this.id;
    }
    getDuracao() {
        return this.duracao;
    }
    getPrecedente() {
        return this.precedente;
    }
    getSeguinte() {
        return this.seguinte;
    }
    getPosicaoX() {
        return this.posicaoX;
    }
    getPosicaoY() {
        return this.posicaoY;
    }
    getPrimeiroTempoInicio() {
        return this.primeiroTempoInicio;
    }
    getPrimeiroTempoFim() {
        return this.primeiroTempoFim;
    }
    getUltimoTempoInicio() {
        return this.ultimoTempoInicio;
    }
    getUltimoTempoFim() {
        return this.ultimoTempoFim;
    }
    getFolga() {
        return this.folga;
    }

    setPosicaoX(posicaoX) {
        this.posicaoX = posicaoX;
    }
    setPosicaoY(posicaoY) {
        this.posicaoY = posicaoY;
    }
    setPrecedente(precedente) {
        this.precedente = precedente;
    }
    setSeguinte(seguinte) {
        this.seguinte = seguinte;
    }
    setPrimeiroTempoInicio(primeiroTempoInicio) {
        this.primeiroTempoInicio = primeiroTempoInicio;
    }
    setPrimeiroTempoFim(primeiroTempoFim) {
        this.primeiroTempoFim = primeiroTempoFim;
    }
    setUltimoTempoInicio(ultimoTempoInicio) {
        this.ultimoTempoInicio = ultimoTempoInicio;
    }
    setUltimoTempoFim(ultimoTempoFim) {
        this.ultimoTempoFim = ultimoTempoFim;
    }
    setFolga(folga) {
        this.folga = folga;
    }
}

function getAtividadePorId(id) {
    return atividades.find((atividade) => atividade.getId() === id);
}

function atualizarGrafo() {
    getListaDeAtividades();

    // atividades.forEach((atividade) => {
    //     //talvez dar sort pelo id primeiro
    // });
    configurarGrafo();

    //set TempoInicio
    atividades.forEach((atividade) => {
        if (atividade.getPrecedente()) {
            precedentes = atividade.getPrecedente().split(",");
            let maiorTempoInicioFimPrecedente = 0;

            precedentes.forEach((precedenteId) => {
                let _atividade = getAtividadePorId(precedenteId);

                maiorTempoInicioFimPrecedente = Math.max(
                    maiorTempoInicioFimPrecedente,
                    _atividade.getPrimeiroTempoFim()
                );
            });

            atividade.setPrimeiroTempoInicio(maiorTempoInicioFimPrecedente);
        }

        atividade.setPrimeiroTempoFim(
            parseInt(atividade.getPrimeiroTempoInicio()) +
                parseInt(atividade.getDuracao())
        );
    });

    //set posicoes e seguintes
    atividades.forEach((atividade) => {
        if (!atividade.getPrecedente()) {
            atividade.setPosicaoX(posicaoXNodoInicio + 100);
            atividade.setPosicaoY(posicaoYNodoInicio);
        } else {
            let precedente = atividades.find((atividadePrecedente) => {
                precedentes = atividade.getPrecedente().split(",");

                if (atividadePrecedente.getId() === precedentes[0]) {
                    precedentes.forEach((precedenteId) => {
                        let _atividadeSetarSeguinte = atividades.find(
                            (atividadeSetarSeguinte) =>
                                atividadeSetarSeguinte.getId() === precedenteId
                        );

                        if (
                            parseInt(_atividadeSetarSeguinte.getSeguinte()) !==
                            0
                        ) {
                            _atividadeSetarSeguinte.setSeguinte(
                                _atividadeSetarSeguinte.getSeguinte() +
                                    "," +
                                    atividade.getId()
                            );
                        } else {
                            _atividadeSetarSeguinte.setSeguinte(
                                atividade.getId()
                            );
                        }
                    });
                }

                return atividadePrecedente.getId() === precedentes[0];
            });

            let novaPosicaoX = precedente.getPosicaoX() + espacoXEntreNodos;
            let novaPosicaoY = precedente.getPosicaoY();

            let jaTemAlguemNaPosicao = atividades.find(
                (atividadeNaPosicao) =>
                    atividadeNaPosicao.getPosicaoX() == novaPosicaoX &&
                    atividadeNaPosicao.getPosicaoY() == novaPosicaoY
            );

            if (jaTemAlguemNaPosicao) {
                novaPosicaoY += espacoYEntreNodos;
            }

            atividade.setPosicaoX(novaPosicaoX);
            atividade.setPosicaoY(novaPosicaoY);
        }
    });

    let maiorPrimeiroTempoFim = 0;

    atividadesFinais = atividades.filter((atividade) => {
        if (atividade.getSeguinte() === 0) {
            maiorPrimeiroTempoFim = Math.max(
                maiorPrimeiroTempoFim,
                atividade.getPrimeiroTempoFim()
            );
            return atividade;
        }
    });

    //inserir tempos finais
    function setUltimoTempo(atividade) {
        if (atividade.getPrecedente()) {
            precedentes = atividade.getPrecedente().split(",");

            let menorPrimeiroTempoFim = 9999;
            precedentes.forEach((precedenteId) => {
                let _atividade = getAtividadePorId(precedenteId);
                let _seguintes = _atividade.getSeguinte();
                _seguintes = _seguintes.split(",");

                _seguintes.forEach((atividadeSeguinteId) => {
                    let _atividadeSeguinte =
                        getAtividadePorId(atividadeSeguinteId);

                    menorPrimeiroTempoFim = Math.min(
                        menorPrimeiroTempoFim,
                        _atividadeSeguinte.getUltimoTempoInicio()
                    );
                });
            });

            precedentes.forEach((precedenteId) => {
                let _atividade = getAtividadePorId(precedenteId);
                _atividade.setUltimoTempoFim(menorPrimeiroTempoFim);
                _atividade.setUltimoTempoInicio(
                    _atividade.getUltimoTempoFim() - _atividade.getDuracao()
                );

                if (_atividade.getPrecedente()) {
                    setUltimoTempo(_atividade);
                }
            });
        }
    }

    atividadesFinais.forEach((atividade) => {
        atividade.setUltimoTempoFim(maiorPrimeiroTempoFim);
        atividade.setUltimoTempoInicio(
            atividade.getUltimoTempoFim() - atividade.getDuracao()
        );

        if (atividade.getPrecedente()) {
            setUltimoTempo(atividade);
        }
    });

    //calcular folgas
    atividades.forEach((atividade) => {
        console.log(
            atividade.getUltimoTempoFim() - atividade.getPrimeiroTempoFim()
        );
        atividade.setFolga(
            atividade.getUltimoTempoFim() - atividade.getPrimeiroTempoFim()
        );
    });

    //inserir nodos
    atividades.forEach((atividade) => {
        grafoDesenhado.addNode(atividade.getId(), {
            label: "".concat(
                `[${atividade.getId()} | ${atividade.getDuracao()}]`,
                `\n[ ${atividade.getPrimeiroTempoInicio()} | ${atividade.getPrimeiroTempoFim()} ]`,
                `\n[ ${atividade.getUltimoTempoInicio()} | ${atividade.getUltimoTempoFim()} ]`
            ),
            posicaoX: atividade.getPosicaoX(),
            posicaoY: atividade.getPosicaoY(),
            folga: atividade.getFolga(),
            render: renderer,
        });
    });

    //inserir conexoes
    atividades.forEach((atividade) => {
        if (!atividade.getPrecedente()) {
            grafoDesenhado.addEdge(nodoInicioNome, atividade.getId(), {
                directed: true,
            });
        }

        if (!atividade.getSeguinte()) {
            grafoDesenhado.addEdge(atividade.getId(), nodoFimNome, {
                directed: true,
            });
        } else {
            seguintes = atividade.getSeguinte().split(",");
            seguintes.forEach((precedenteId) => {
                grafoDesenhado.addEdge(atividade.getId(), precedenteId, {
                    directed: true,
                });
            });
        }
    });

    desenharGrafo();
}

function getListaDeAtividades() {
    const listaDeConexoes = Array.from(inputListaDeConexoes.children);

    atividades = [];

    listaDeConexoes.every((elemento) => {
        let dados = Array.from(elemento.children);

        if (
            !dados[0].checkValidity() ||
            !dados[1].checkValidity() ||
            !dados[2].checkValidity()
        ) {
            alert("há um valor inválido, verifique.");
            return false;
        }

        let atividade = dados[0].value;
        let duracao = dados[1].value;
        let precedente = dados[2].value;
        let novaAtividade = new Atividade(atividade, duracao, precedente);
        atividades.push(novaAtividade);

        return true;
    });
}

inicializar();

atualizarGrafo();
