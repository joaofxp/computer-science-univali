enviarMensagem = () => {
    const mensagem = document.getElementById("mensagemEnviar").value;
    const tipoLog = document.getElementById("logTipo").value;

    (async () => {
        const rawResponse = await fetch("http://127.0.0.1:3000/log", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                mensagem: mensagem,
                tipoLog: tipoLog,
            }),
        });
        const { message: retorno } = await rawResponse.json();

        document.getElementById("areaDeMensagens").innerText = retorno;
    })();
};
