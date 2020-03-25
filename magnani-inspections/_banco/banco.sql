CREATE TABLE poste_material (
	id serial NOT NULL,
	nome VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE poste (
	id serial NOT NULL,
	etiqueta_numero int NOT NULL,
	altura int NOT NULL,
	material_id int NOT NULL,
	latitude decimal(12,9) NOT NULL,
	longitude decimal(12,9) NOT NULL,
	caixa_etiqueta_numero int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE inspecao (
	id serial NOT NULL,
	poste_etiqueta_numero int NOT NULL,
	data_inspecao date NOT NULL,
	estado_adequado boolean NOT NULL,
	estado_prumo boolean NOT NULL,
	precisa_manutencao boolean NOT NULL,
	fiacao_adequada boolean NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE caixa (
	id serial NOT NULL,
	etiqueta_numero int NOT NULL,
	exposta boolean NOT NULL,
	capacidade_watts int NOT NULL,
	latitude decimal(12,9) NOT NULL,
	longitude decimal(12,9) NOT NULL,
	primary key (id)
);

ALTER TABLE poste_material ADD UNIQUE (nome);
ALTER TABLE caixa ADD UNIQUE (etiqueta_numero);
ALTER TABLE poste ADD UNIQUE (etiqueta_numero);

ALTER TABLE poste ADD FOREIGN KEY (material_id) REFERENCES poste_material (id);

ALTER TABLE poste ADD FOREIGN KEY (caixa_etiqueta_numero) REFERENCES caixa (etiqueta_numero) ON DELETE CASCADE;
ALTER TABLE inspecao ADD FOREIGN KEY (poste_etiqueta_numero) REFERENCES poste (etiqueta_numero) ON DELETE CASCADE;

CREATE OR REPLACE VIEW 
	postes_cadastrados 
AS SELECT 
	poste.etiqueta_numero,
	poste.altura,
	poste_material.nome,
	poste.latitude,
	poste.longitude,
	poste.caixa_etiqueta_numero		
FROM 
	poste
INNER JOIN 
	poste_material
ON 
	(poste.material_id = poste_material.id)
;