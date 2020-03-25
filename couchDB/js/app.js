novaPessoa = (nome) => {
    if (nome === "")
        alert("Nome não pode estar vazio");

    let jsonData = {
        "nome": nome
    }

    $.ajax({
        method: "POST",
        url: "http://127.0.0.1:5984/pessoa",
        headers: {
            "Content-Type": "application/json"
        },
        data: JSON.stringify(jsonData),
        success: function () {
            alert('adicionado');

            window.location.href = window.location.href;
        },
        error: function () {
            alert("erro");
        }
    });
}

$(document).ready(function () {
    $.ajax({
        method: "get",
        url: "http://127.0.0.1:5984/pessoa/_design/nomes/_view/nome",
        xhrFields: {
            withCredentials: true
        },
        headers: {
            "Authorization": "Basic" + btoa("3ec5dc53-ef68-4c44-9a2e-cafd095b2574-bluemix:79795518b3bdf884e5b97ca785535caa613f09364e84a028f1197f5a9b5f7f58")
        },
        success: function (data) {
            for (let index = 0; index < data.rows.length; index++) {
                document.getElementById("container").innerHTML += data.rows[index].value + " <br>";
            }
        },
        error: function (msg) {
            console.log("erro");
            console.log(msg);
        }
    });
});


/*

* bateria de teste
* Cors
* Botão JSON que já mostra a url pronta para consultar
* Editar view para remover o null
* put com curl
* uuid - id universal
* editar view->funcao para remover a listagem "null"

* Cloudant

Get todos documentos de um banco
http://localhost:5984/pessoa/_all_docs

Get DB documento
http://localhost:5984/pessoa/1a0bd9e48ccbcc44fc53460641000ab1

Get Nome Pessoas
http://localhost:5984/pessoa/_design/nomes/_view/nome

Cloudant

curl -X GET http://127.0.0.1:5984/pessoa

curl -X PUT http://admin:123456@localhost:5984/telefone

curl -X PUT http://admin:123456@localhost:5984/pessoa/novoId -H "Content-Type: application/json" -d {\"nome\":\"Teste\"}

*/