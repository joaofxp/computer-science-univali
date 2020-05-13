const base = [
    ["Señorita", "Shawn Mendes", "pop", "117", "55", "76", "8", "75", "191"],
    ["China", "Anuel AA", "reggaeton", "105", "81", "79", "8", "61", "302"],
    ["boyfriend (with Social House)", "Ariana Grande", "pop", "190", "80", "40", "16", "70", "186"],
    ["Beautiful People (feat. Khalid)", "Ed Sheeran", "pop", "93", "65", "64", "8", "55", "198"],
    ["Goodbyes (Feat. Young Thug)", "Post Malone", "rap", "150", "65", "58", "11", "18", "175"],
    ["I Don't Care (with Justin Bieber)", "Ed Sheeran", "pop", "102", "68", "80", "9", "84", "220"],
    ["Ransom", "Lil Tecca", "rap", "180", "64", "75", "7", "23", "131"],
    ["How Do You Sleep?", "Sam Smith", "pop", "111", "68", "48", "8", "35", "202"],
    ["Old Town Road - Remix", "Lil Nas X", "rap", "136", "62", "88", "11", "64", "157"],
    ["bad guy", "Billie Eilish", "electronic", "135", "43", "70", "10", "56", "194"],
    ["Callaita", "Bad Bunny", "reggaeton", "176", "62", "61", "24", "24", "251"],
    ["Loco Contigo (feat. J. Balvin & Tyga)", "DJ Snake", "pop", "96", "71", "82", "15", "38", "185"],
    ["Someone You Loved", "Lewis Capaldi", "pop", "110", "41", "50", "11", "45", "182"],
    ["Otro Trago - Remix", "Sech", "pop", "176", "79", "73", "6", "76", "288"],
    ["Money In The Grave (Drake ft. Rick Ross)", "Drake", "rap", "101", "50", "83", "12", "10", "205"],
    ["No Guidance (feat. Drake)", "Chris Brown", "pop", "93", "45", "70", "16", "14", "261"],
    ["LA CANCIÓN", "J Balvin", "latin", "176", "65", "75", "11", "43", "243"],
    ["Sunflower - Spider-Man: Into the Spider-Verse", "Post Malone", "rap", "90", "48", "76", "7", "91", "158"],
    ["Lalala", "Y2K", "rap", "130", "39", "84", "14", "50", "161"],
    ["Truth Hurts", "Lizzo", "rap", "158", "62", "72", "12", "41", "173"],
    ["Piece Of Your Heart", "MEDUZA", "pop", "124", "74", "68", "7", "63", "153"],
    ["Panini", "Lil Nas X", "rap", "154", "59", "70", "12", "48", "115"],
    ["No Me Conoce - Remix", "Jhay Cortez", "reggaeton", "92", "79", "81", "9", "58", "309"],
    ["Soltera - Remix", "Lunay", "latin", "92", "78", "80", "44", "80", "266"],
    ["bad guy (with Justin Bieber)", "Billie Eilish", "electronic", "135", "45", "67", "12", "68", "195"],
    ["If I Can't Have You", "Shawn Mendes", "pop", "124", "82", "69", "13", "87", "191"],
    ["Dance Monkey", "Tones and I", "pop", "98", "59", "82", "18", "54", "210"],
    ["It's You", "Ali Gatie", "rap", "96", "46", "73", "19", "40", "213"],
    ["Con Calma", "Daddy Yankee", "latin", "94", "86", "74", "6", "66", "193"],
    ["QUE PRETENDES", "J Balvin", "latin", "93", "79", "64", "36", "94", "222"],
    ["Takeaway", "The Chainsmokers", "electronic", "85", "51", "29", "10", "36", "210"],
    ["7 rings", "Ariana Grande", "pop", "140", "32", "78", "9", "33", "179"],
    ["0.958333333333333", "Maluma", "reggaeton", "96", "71", "78", "9", "68", "176"],
    ["The London (feat. J. Cole & Travis Scott)", "Young Thug", "rap", "98", "59", "80", "13", "18", "200"],
    ["Never Really Over", "Katy Perry", "pop", "100", "88", "77", "32", "39", "224"],
    ["Summer Days (feat. Macklemore & Patrick Stump of Fall Out Boy)", "Martin Garrix", "electronic", "114", "72", "66", "14", "32", "164"],
    ["Otro Trago", "Sech", "pop", "176", "70", "75", "11", "62", "226"],
    ["Antisocial (with Travis Scott)", "Ed Sheeran", "pop", "152", "82", "72", "36", "91", "162"],
    ["Sucker", "Jonas Brothers", "boy band", "138", "73", "84", "11", "95", "181"],
    ["fuck i'm lonely (with Anne-Marie) - from “13 Reasons Why: Season 3”", "Lauv", "pop", "95", "56", "81", "6", "68", "199"],
    ["Higher Love", "Kygo", "electronic", "104", "68", "69", "10", "40", "228"],
    ["You Need To Calm Down", "Taylor Swift", "pop", "85", "68", "77", "7", "73", "171"],
    ["Shallow", "Lady Gaga", "pop", "96", "39", "57", "23", "32", "216"],
    ["Talk", "Khalid", "pop", "136", "40", "90", "6", "35", "198"],
    ["Con Altura", "ROSALÍA", "pop", "98", "69", "88", "5", "75", "162"],
    ["One Thing Right", "Marshmello", "electronic", "88", "62", "66", "58", "44", "182"],
    ["Te Robaré", "Nicky Jam", "latin", "176", "75", "67", "8", "80", "202"],
    ["Happier", "Marshmello", "electronic", "100", "79", "69", "17", "67", "214"],
    ["Call You Mine", "The Chainsmokers", "electronic", "104", "70", "59", "41", "50", "218"],
    ["Cross Me (feat. Chance the Rapper & PnB Rock)", "Ed Sheeran", "pop", "95", "79", "75", "7", "61", "206"]
]

calcularSimilaridade = (valorEntrada, valorBase) => {
    if (valorEntrada === 0)
        return 0;

    let valorDivisaoSimilaridade = 5;

    return (1 - (Math.abs(valorEntrada - valorBase) / valorDivisaoSimilaridade));
}

retornarValorBPM = (valorBusca) => {
    if (valorBusca === 0) {
        return 0;
    } else if (valorBusca >= 85 && valorBusca <= 94) {
        return 1;
    } else if (valorBusca >= 95 && valorBusca <= 104) {
        return 2;
    } else if (valorBusca >= 105 && valorBusca <= 124) {
        return 3;
    } else if (valorBusca >= 130 && valorBusca <= 150) {
        return 4;
    } else if (valorBusca >= 152 && valorBusca <= 190) {
        return 5;
    }
}

retornarValorEnergia = (valorBusca) => {
    if (valorBusca === 0)
        return 0;
    else if (valorBusca >= 32 && valorBusca <= 45)
        return 1;
    else if (valorBusca >= 46 && valorBusca <= 59)
        return 2;
    else if (valorBusca >= 62 && valorBusca <= 70)
        return 3;
    else if (valorBusca >= 71 && valorBusca <= 78)
        return 4;
    else if (valorBusca >= 79 && valorBusca <= 88)
        return 5;
}

retornarValorDancabilidade = (valorBusca) => {
    if (valorBusca === 0)
        return 0;
    else if (valorBusca >= 29 && valorBusca <= 57)
        return 1;
    else if (valorBusca >= 58 && valorBusca <= 67)
        return 2;
    else if (valorBusca >= 68 && valorBusca <= 74)
        return 3;
    else if (valorBusca >= 75 && valorBusca <= 80)
        return 4;
    else if (valorBusca >= 81 && valorBusca <= 90)
        return 5;
}

retornarValorVivacidade = (valorBusca) => {
    if (valorBusca === 0)
        return 0;
    else if (valorBusca >= 5 && valorBusca <= 9)
        return 1;
    else if (valorBusca >= 10 && valorBusca <= 14)
        return 2;
    else if (valorBusca >= 15 && valorBusca <= 19)
        return 3;
    else if (valorBusca >= 23 && valorBusca <= 32)
        return 4;
    else if (valorBusca >= 36 && valorBusca <= 58)
        return 5;
}

retornarValorHumor = (valorBusca) => {
    if (valorBusca === 0)
        return 0;
    else if (valorBusca >= 10 && valorBusca <= 33)
        return 1;
    else if (valorBusca >= 35 && valorBusca <= 44)
        return 2;
    else if (valorBusca >= 45 && valorBusca <= 61)
        return 3;
    else if (valorBusca >= 62 && valorBusca <= 73)
        return 4;
    else if (valorBusca >= 75 && valorBusca <= 95)
        return 5;
}

retornarValorDuracao = (valorBusca) => {
    if (valorBusca === 0)
        return 0;
    else if (valorBusca >= 115 && valorBusca <= 158)
        return 1;
    else if (valorBusca >= 161 && valorBusca <= 175)
        return 2;
    else if (valorBusca >= 176 && valorBusca <= 195)
        return 3;
    else if (valorBusca >= 198 && valorBusca <= 216)
        return 4;
    else if (valorBusca >= 218 && valorBusca <= 309)
        return 5;
}

retornarValorGenero = (valorA, valorB) => {
    if (valorA === valorB || valorA === "indiferente" || valorB === "indiferente")
        return 1;

    switch (valorA) {
        case "pop":
            switch (valorB) {
                case "rap":
                    return 0.2;
                case "electronic":
                    return 0.5;
                case "boy band":
                    return 0.6;
                case "latin":
                    return 0.5;
                case "reggaeton":
                    return 0.1;
                default:
                    break;
            }
            break;
        case "rap":
            switch (valorB) {
                case "pop":
                    return 0.2;
                case "electronic":
                    return 0.3;
                case "boy band":
                    return 0.2;
                case "latin":
                    return 0.4;
                case "reggaeton":
                    return 0.1;
                default:
                    break;
            }
            break;
        case "electronic":
            switch (valorB) {
                case "pop":
                    return 0.5;
                case "rap":
                    return 0.3;
                case "boy band":
                    return 0.4;
                case "latin":
                    return 0.3;
                case "reggaeton":
                    return 0.5;
                default:
                    break;
            }
            break;
        case "boy band":
            switch (valorB) {
                case "pop":
                    return 0.6;
                case "rap":
                    return 0.2;
                case "electronic":
                    return 0.4;
                case "latin":
                    return 0.5;
                case "reggaeton":
                    return 0.2;
                default:
                    break;
            }
            break;
        case "latin":
            switch (valorB) {
                case "pop":
                    return 0.5;
                case "rap":
                    return 0.4;
                case "electronic":
                    return 0.3;
                case "boy band":
                    return 0.5;
                case "reggaeton":
                    return 0.6;
                default:
                    break;
            }
            break;
        case "reggaeton":
            switch (valorB) {
                case "pop":
                    return 0.1;
                case "rap":
                    return 0.1;
                case "electronic":
                    return 0.5;
                case "boy band":
                    return 0.2;
                case "latin":
                    return 0.6;
                default:
                    break;
            }
            break;
        default:
            break;
    }
}

somaObjValores = (obj) => {
    return Object.keys(obj).reduce((sum, key) => sum + parseFloat(obj[key] || 0), 0);
}

adicionarMusicaTabela = (musica) => {
    document.getElementById("conteudo-tabela").innerHTML += `
        <tr>
            <td>${musica[9]}</td>
            <td>${musica[0]}</td>
            <td>${musica[1]}</td>
            <td>${musica[2]}</td>
            <td>${musica[3]}</td>
            <td>${musica[4]}</td>
            <td>${musica[5]}</td>
            <td>${musica[6]}</td>
            <td>${musica[7]}</td>
            <td>${musica[8]}</td>
        </tr>
    `;
}

calcular = () => {
    $("table").DataTable().destroy();

    $("#conteudo-tabela").html("");

    let entradaUsuario = [
        "",
        "",
        $("#inputGenero").val(),
        Number($("#inputBPM").val()),
        Number($("#inputEnergia").val()),
        Number($("#inputDancabilidade").val()),
        Number($("#inputVivacidade").val()),
        Number($("#inputHumor").val()),
        Number($("#inputDuracao").val()),
    ];

    let valorIniciarIteracao = 2;
    let valorQtdAtributos = 9;

    let atributoDaVez = {
        genero: valorIniciarIteracao,
        batidasPorMinuto: valorIniciarIteracao + 1,
        energia: valorIniciarIteracao + 2,
        dancabilidade: valorIniciarIteracao + 3,
        vivencia: valorIniciarIteracao + 4,
        humor: valorIniciarIteracao + 5,
        duracao: valorIniciarIteracao + 6
    }

    let atributoPeso = {
        genero: Number($("#pesoGenero").val()),
        batidasPorMinuto: Number($("#pesoBPM").val()),
        energia: Number($("#pesoEnergia").val()),
        dancabilidade: Number($("#pesoDancabilidade").val()),
        vivencia: Number($("#pesoVivacidade").val()),
        humor: Number($("#pesoHumor").val()),
        duracao: Number($("#pesoDuracao").val())
    }

    let somaAtributoPesos = Number(Number(somaObjValores(atributoPeso)).toFixed(1));

    for (let i = 0; i < base.length; i++) {
        let genero = undefined;
        let batidasPorMinuto = undefined;
        let energia = undefined;
        let dancabilidade = undefined;
        let vivencia = undefined;
        let humor = undefined;
        let duracao = undefined;

        for (let j = valorIniciarIteracao; j < valorQtdAtributos; j++) {
            let valorBase = base[i][j];
            let valorEntrada = entradaUsuario[j];

            switch (j) {
                case atributoDaVez.genero:
                    genero = Number(Number(retornarValorGenero(valorEntrada, valorBase)).toFixed(1));
                    console.log("calcular -> genero", genero)
                    break;
                case atributoDaVez.batidasPorMinuto:
                    batidasPorMinuto = Number(Number(calcularSimilaridade(retornarValorBPM(valorEntrada), retornarValorBPM(valorBase))).toFixed(1));
                    break;
                case atributoDaVez.energia:
                    energia = Number(Number(calcularSimilaridade(retornarValorEnergia(valorEntrada), retornarValorEnergia(valorBase))).toFixed(1));
                    break;
                case atributoDaVez.dancabilidade:
                    dancabilidade = Number(Number(calcularSimilaridade(retornarValorDancabilidade(valorEntrada), retornarValorDancabilidade(valorBase))).toFixed(1));
                    break;
                case atributoDaVez.vivencia:
                    vivencia = Number(Number(calcularSimilaridade(retornarValorVivacidade(valorEntrada), retornarValorVivacidade(valorBase))).toFixed(1));
                    break;
                case atributoDaVez.humor:
                    humor = Number(Number(calcularSimilaridade(retornarValorHumor(valorEntrada), retornarValorHumor(valorBase))).toFixed(1));
                    break;
                case atributoDaVez.duracao:
                    duracao = Number(Number(calcularSimilaridade(retornarValorDuracao(valorEntrada), retornarValorDuracao(valorBase))).toFixed(1));

                    let somaDosVizinhos = (
                        (genero * atributoPeso.genero) +
                        (batidasPorMinuto * atributoPeso.batidasPorMinuto) +
                        (energia * atributoPeso.energia) +
                        (dancabilidade * atributoPeso.dancabilidade) +
                        (vivencia * atributoPeso.vivencia) +
                        (humor * atributoPeso.humor) +
                        (duracao * atributoPeso.duracao)
                    ) / somaAtributoPesos;

                    somaDosVizinhos = Number(Number(somaDosVizinhos).toFixed(1));

                    let desenharArray = JSON.parse(JSON.stringify(base[i]));
                    desenharArray.push(somaDosVizinhos);

                    adicionarMusicaTabela(desenharArray);

                    break;
            }
        }
    }
    $("table").DataTable();
}