-- Inserir caixa - OK
INSERT INTO 
	caixa (etiqueta_numero,exposta,capacidade_watts,latitude,longitude)
VALUES
	(165789,true,1000,15.23456,-30.67890);
----
-- Inserir poste material - NÃO PRECISA IMPLEMENTAR
INSERT INTO
    poste_material(nome)
VALUES
    ('Concreto');
INSERT INTO
    poste_material(nome)
VALUES
    ('Metal');
INSERT INTO
    poste_material(nome)
VALUES
    ('Madeira');
----
-- Inserir poste - OK
INSERT INTO
    poste(etiqueta_numero,altura,material_id,latitude,longitude,caixa_etiqueta_numero)
VALUES
	($etiquetaNumero, $altura, $materialId, $latitude, $longitude, $caixaEtiquetaNumero);
----- Listar Postes cadastrados - Ok
----
-- Inserir inspeção
INSERT INTO
	inspecao(poste_etiqueta_numero,data_inspecao,estado_adequado,estado_prumo,precisa_manutencao,fiacao_adequada)
SELECT
	$posteEtiquetaNumero, '$dataInspecao', $estadoAdequado, $estadoPrumo, $precisaManutencao, $fiacaoAdequada
WHERE NOT EXISTS(
	SELECT 
		poste_etiqueta_numero 
	FROM 
		inspecao 
	where 
		inspecao.data_inspecao
	between 
		'$dataInspecao' and '$dataFinalMes'
	and
		inspecao.poste_etiqueta_numero = '$posteEtiquetaNumero'
);
----
-- Remover caixa - OK
DELETE FROM 
	caixa
WHERE
	etiqueta_numero = $etiquetaNumero
----
-- Remover poste material - NAO PRECISA
delete from
    poste_material
where
    id = 1;
----
-- Remover poste
DELETE FROM 
	poste
WHERE
	etiqueta_numero = $etiquetaNumero
----
-- Remover inspecao
DELETE FROM 
	inspecao
WHERE
	id = $id;
----
-- Relatório de postes não inspecionados por mês || NÃO PRECISA IMPLEMENTAR
select 
	COUNT(poste.id)
from 
	poste 
where 
	poste.etiqueta_numero 
NOT IN (
	select 
		inspecao.poste_etiqueta_numero
	from 
		inspecao
	where 
		inspecao.data_inspecao 
	between 
		'2018-11-01' and '2018-11-30'
);
----
-- Não avaliados por poste - OK
SELECT
    *
FROM
    poste
INNER JOIN 
    poste_material
ON 
    (poste.material_id = poste_material.id)
WHERE 
    poste.etiqueta_numero
NOT IN (
    SELECT
        inspecao.poste_etiqueta_numero
    FROM
        inspecao
    WHERE
        inspecao.data_inspecao
    BETWEEN
        '$mesInicial' and '$mesFinal'
);
----
-- Quantitativo de postes avaliados no mês - OK
select 
	COUNT(id) as postes_avaliados_mes
from 
	inspecao
where 
	inspecao.data_inspecao 
BETWEEN
	'$mesInicial' and '$mesFinal'
----
-- Relatório de postes por condição por mês - Ok
SELECT
    CASE 
        WHEN 
            (estado_adequado = true) 
        THEN 
            COUNT(estado_adequado) 
    END as poste_estado_adequado,
    CASE 
        WHEN 
            (estado_adequado = false) 
        THEN 
            COUNT(estado_adequado) 
    END as poste_estado_inadequado
FROM
    inspecao
WHERE
    inspecao.data_inspecao
BETWEEN
    '$mesInicial' and '$mesFinal'
GROUP BY
    estado_adequado;
----
-- Relatório de saúde de caixas de alimentação por mês
SELECT
    caixa.etiqueta_numero,
    (
        3 * (SELECT count(poste.id) FROM poste WHERE poste.caixa_etiqueta_numero = caixa.etiqueta_numero) * ((EXTRACT(MONTH FROM DATE '$mesFinal') - EXTRACT(MONTH FROM DATE '$mesInicial')) + 1)
    ) AS problemas_qtd_max,
    SUM(
        CASE
            WHEN
                (estado_adequado = false AND estado_prumo = false AND fiacao_adequada = false)
            THEN
                3
            WHEN
                (
					estado_adequado = false AND estado_prumo = false AND fiacao_adequada = true
                	OR
                	estado_adequado = false AND estado_prumo = true AND fiacao_adequada = false
					OR
					estado_adequado = true AND estado_prumo = false AND fiacao_adequada = false
				)
            THEN
                2
            WHEN
                (
					estado_adequado = true AND estado_prumo = true AND fiacao_adequada = false
                	OR
                	estado_adequado = true AND estado_prumo = false AND fiacao_adequada = true
					OR
					estado_adequado = false AND estado_prumo = true AND fiacao_adequada = true
				)
            THEN
                1
            WHEN
                (estado_adequado = true  AND estado_prumo = true AND fiacao_adequada = true)
            THEN
                0
			WHEN
				(inspecao.id IS NULL)
			THEN
				0
        END
    ) AS problemas_qtd_registrados
FROM
    caixa
FULL OUTER JOIN
    poste
ON
    (caixa.etiqueta_numero = poste.caixa_etiqueta_numero)
FULL OUTER JOIN
    inspecao
ON
    ((inspecao.data_inspecao BETWEEN '$mesInicial' AND '$mesFinal') AND inspecao.poste_etiqueta_numero = poste.etiqueta_numero AND caixa.etiqueta_numero IS NOT NULL)
WHERE
    caixa.etiqueta_numero IS NOT NULL
GROUP BY
    caixa.etiqueta_numero;
