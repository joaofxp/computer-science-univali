const express = require('express');
const index = require('../src/route/index');
const bodyParser = require('body-parser');
const userRegistry = require('../src/route/userRegistry');
const animalRegistry = require('../src/route/animalRegistry');
const cors = require('cors');

const app = express();
const corsOptions = {
    origin: 'http://localhost:4200',
    optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
}; 

app.use(cors(corsOptions));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/', index);
app.use('/api/cadastrarPerfil',  userRegistry);
app.use('/api/cadastrarAnimal',  animalRegistry);
// app.post('/api/cadastrarPerfil', db.createUser);

module.exports = app;
