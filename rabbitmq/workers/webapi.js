//webapi.js
const express = require("express");
const cors = require("cors");
var amqp = require("amqplib/callback_api");

const app = express();
app.use(express.urlencoded({ extended: true }));

app.use(cors());
app.use(express.json());

const router = express.Router();

router.post("/log", (req, res) => {
    const { mensagem, tipoLog } = req.body;

    enviarMensagem(mensagem, tipoLog);

    res.json({ message: "Processando sua mensagem..." });
});

app.use("/", router);

app.listen(3000);

const enviarMensagem = (mensagem, tipoLog) => {
    amqp.connect("amqp://localhost:5672", function (error0, connection) {
        if (error0) {
            throw error0;
        }

        connection.createChannel(function (error1, channel) {
            if (error1) {
                throw error1;
            }

            var exchange = "direct_logs";
            var msg = mensagem;
            var severity = tipoLog;

            channel.assertExchange(exchange, "direct", {
                durable: false,
            });

            channel.publish(exchange, severity, Buffer.from(msg));
            console.log(" [x] Mensagem enviada %s: '%s'", severity, msg);
        });

        setTimeout(function () {
            connection.close();
            // process.exit(0);
        }, 500);
    });
};
