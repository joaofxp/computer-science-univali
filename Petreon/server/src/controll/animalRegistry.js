const Pool = require('pg').Pool;

const client = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'Petreon',
    password: '1234',
    port: 5432,
});

exports.post = (req, res) => {
    console.log('--------------CreateAnimal-----------');
    console.log(req.body);
    const { nome, data_nascimento, sexo, porte, complemento, castracao, vermifugo, vacina } = req.body;

    client.query('WITH ins1 AS (INSERT INTO animalSaude (castracao, vermifugo, vacina) VALUES ($1, $2, $3) RETURNING id AS id_animal_saude)' +
                'INSERT INTO animal (nome, sexo, porte, complemento) VALUES ($4, $5, $6, $7)',
        [castracao, vermifugo, vacina, nome, sexo, porte, complemento],
        (error, results) => {
            if (error) {
                throw error;
            } else {
                results.query('INSERT INTO animal (id_animal_saude, nome, data_nascimento, sexo, porte, complemento) VALUES ($1, $2, $3, $4, $5)',
                [],
                (error, results) => {
                    if (error) {
                        throw error;
                    } else {
                        res.status(201).send(`Doguito added with Nome: ${nome}`);
                    }

                });
                res.status(201).send(`Doguito added with Nome: ${nome}`);
            }
        });
};
