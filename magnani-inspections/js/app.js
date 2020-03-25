function relatorioPostesNaoInspecionados(mes, mesFinal) {
    $(".postes-nao-inspecionados-div").html("<hr>Carregando...");
    $.get("post-postesNaoInspecionados.php?mes=" + mes + "&mesFinal=" + mesFinal, function (data) {
        $(".postes-nao-inspecionados-div").html(data);
    });
}

function relatorioNPostesInspecionados(mes) {
    $(".n-postes-inspecionados-div").html("<hr>Carregando...");
    $.get("post-postesNInspecionados.php?mes=" + mes, function (data) {
        $(".n-postes-inspecionados-div").html(data);
    });
}

function relatorioPostesPorCondicao(mes) {
    $(".postes-por-condicao-div").html("<hr>Carregando...");
    $.get("post-postesPorCondicao.php?mes=" + mes, function (data) {
        $(".postes-por-condicao-div").html(data);
    });
}

function relatorioCaixaSaude(mesInicial, mesFinal) {
    $(".caixa-saude-div").html("<hr>Carregando...");
    $.get("post-caixaSaude.php?mesInicial=" + mesInicial + "&mesFinal=" + mesFinal, function (data) {
        $(".caixa-saude-div").html(data);
    });
}

function postesCadastrados() {
    $(".postes_cadastrados").html("Carregando...");
    $.get("get-postesCadastrados.php", function (data) {
        $(".postes_cadastrados").html(data);
    });
}

function caixasCadastradas() {
    $(".caixas_cadastradas").html("Carregando...");
    $.get("get-caixasCadastradas.php", function (data) {
        $(".caixas_cadastradas").html(data);
    });
}

function inspecoesCadastradas() {
    $(".inspecoes_cadastradas").html("Carregando...");
    $.get("get-inspecoesCadastradas.php", function (data) {
        $(".inspecoes_cadastradas").html(data);
    });
}

function deletarRegistro(id, funcaoDeletar) {
    if (confirm("Deletar este registro?"))
        funcaoDeletar(id);
}

function caixaDeletar(id) {
    $.post("post-caixaDeletar.php?etiqueta_numero=" + id, function (data) {
        alert("Caixa deletada com sucesso!");
        caixasCadastradas();
    });
}

function posteDeletar(id) {
    $.post("post-posteDeletar.php?etiqueta_numero=" + id, function (data) {
        alert("Poste deletado com sucesso!");
        postesCadastrados();
    });
}

function inspecaoDeletar(id) {
    $.post("post-inspecaoDeletar.php?id=" + id, function (data) {
        alert("Inspeção deletada com sucesso!");
        inspecoesCadastradas();
    });
}