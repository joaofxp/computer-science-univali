const Pool = require('pg').Pool;

const client = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'Petreon',
    password: '1234',
    port: 5432,
});

exports.post = (req, res) => {
    console.log('--------------CreateUser-----------');
    console.log(req.body);
    const { nome, cpf, data_nascimento, genero, numero_celular, email, senha } = req.body;

    client.query('INSERT INTO usuario (nome, cpf, data_nascimento, genero, numero_celular, email, senha) VALUES ($1, $2, $3, $4, $5, $6, $7)',
        [nome, cpf, data_nascimento, genero, numero_celular, email, senha],
        (error, results) => {
            if (error) {
                throw error;
            }
            res.status(201).send(`User added with Nome: ${nome}`);
        });
};

// exports.post = async (req, res) => {
//     console.log('--------------CreateUser-----------');
//     console.log(req.body);
//     await client.connect();
//     const { nome, cpf, data_nascimento, genero, numero_celular, email, senha } = req.body;
//     try {
//         await client.query("BEGIN");
//         await client.query('INSERT INTO usuario (nome, cpf, data_nascimento, genero, numero_celular, email, senha) VALUES ($1, $2, $3, $4, $5, $6, $7)',
//             [nome, cpf, data_nascimento, genero, numero_celular, email, senha],
//             (error, results) => {
//                 if (error) {
//                     throw error;
//                 }else{
//                     res.status(201).send(`User added with Nome: ${nome}`);
//                 }
//             });

//         await client.query("COMMIT");
//     } catch (error) {
//         await client.query("ROLLBACK");
//         throw e;
//     } finally {
//     }
// };

exports.get = (req, res) => {
    res.json({ info: 'User Reg' });
};

