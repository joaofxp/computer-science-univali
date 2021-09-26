//worker.js
const queue = require("./queue");
queue.consume("fila1", (message) => {
    console.log("processing " + message.content.toString());
});

//TODO:falta fazer a fila 1 receber menasgem e a fila 2 tambem e devolver pro cliente
queue.consume("fila2", (message) => {
    console.log("processing " + message.content.toString());
});
