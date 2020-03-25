
<?php

    include("pgsql.php");

    if(addslashes(!empty($_GET['mesInicial'])) AND addslashes(!empty($_GET['mesFinal']))){
        $mesInicial = date("Y-m-d",strtotime(addslashes($_GET['mesInicial'])));
        $mesFinal = date("Y-m-t",strtotime(addslashes($_GET['mesFinal'])));

        if($mesInicial > $mesFinal) {
            echo "
                <script>
                    alert('O mês inicial não pode ser maior que o mês final')
                </script>
                <hr>
                O mês inicial não pode ser maior que o mês final.";
            return;
        }

        $result = pg_query($conn, "
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
        ");

        echo "<hr>
        <div class='table-responsive'>
        <table class='table table-striped table-bordered table-sm table-hover'>
            <thead class='thead-dark'>
                <tr >
                    <th>Caixa Etiqueta</th>
                    <th>Problemas Qtd. Máx.</th>
                    <th>Problemas Registrados</th>
                </tr>
            </thead>
            <tbody>
        ";

        if(pg_num_rows($result) == 0)
            echo "
                <tr><td>Nenhum registro.</td></tr>
            ";

        while ($row = pg_fetch_array($result)) {
            foreach ($row AS $key => $val){
                $$key = stripslashes( $val );
            }

            echo "
                <tr>
                    <td>$etiqueta_numero</td>
                    <td>$problemas_qtd_max</td>
                    <td>$problemas_qtd_registrados</td>
                </tr>
            ";

        }

        return;
    }

    // header("location: /magnani-inspections");

?>