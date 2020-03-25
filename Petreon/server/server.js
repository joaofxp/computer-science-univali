const app = require('./src/app');

const port = 8000;

const corsOptions = {
    origin: 'http://localhost:4200',
    optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
};

app.listen(port, () => {
    console.log('Server started!');
});

// app.route('/api/cadastrarPerfil/:nome').post((req, res) => {
//     console.log('cadastrarPerfi');
//     res.send(201, req.body);
// });
