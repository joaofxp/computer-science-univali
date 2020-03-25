function download_csv(csv, filename) {
    var csvFile;
    var downloadLink;

    // CSV FILE
    csvFile = new Blob([csv], {
        type: "text/txt"
    });
    // csvFile = new Blob([csv], {
    //     type: "text/csv"
    // });

    // Download link
    downloadLink = document.createElement("a");

    // File name
    downloadLink.download = filename;

    // We have to create a link to the file
    downloadLink.href = window.URL.createObjectURL(csvFile);

    // Make sure that the link is not displayed
    downloadLink.style.display = "none";

    // Add the link to your DOM
    document.body.appendChild(downloadLink);

    // Launch click
    downloadLink.click();
}

function export_table_to_csv(valoresExportar, filename) {
    var csv = valoresExportar;

    csv = csv.join('\n');

    download_csv(csv, filename);
}

function exportarTabelaCSV(tabelaElement) {
    if (tabelaElement === "chegada")
        export_table_to_csv(valoresChegadaGerados, "tabela.txt");
    else
        export_table_to_csv(valoresServicoGerados, "tabela.txt");
}

function zerarTabelas() {
    $("#tbody-chegadas").html("");
    $("#tbody-servicos").html("");
}

function inserirTabelaChegada(valor) {
    valoresChegadaGerados.push(valor)
}

function inserirTabelaServico(valor) {
    valoresServicoGerados.push(valor);
}