<?php

    include("pgsql.php");

    if(addslashes(!empty($_GET['mes'])) AND addslashes(!empty($_GET['mesFinal']))){
        $mesInicial = date("Y-m-d",strtotime(addslashes($_GET['mes'])));
        $mesFinal = date("Y-m-t",strtotime(addslashes($_GET['mesFinal'])));

        $result = pg_query($conn, "
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
        ");

        echo "
            <hr>
            <table class='table table-striped table-bordered table-sm table-hover'>
                <thead class='thead-dark'>
                    <tr >
                        <th>Etiqueta Número</th>
                        <th>Altura</th>
                        <th>Material</th>
                        <th>Latitude</th>
                        <th>Longitude</th>
                        <th>Caixa Etiqueta</th>
                    </tr>
                </thead>
                <tbody>
        ";

        if(pg_num_rows($result) == 0)
            echo "
                <tr><td colspan='6'>Todos os postes foram inspecionados.</td></tr>
            ";

        while ($row = pg_fetch_array($result)) {
            foreach ($row AS $key => $val){
                $$key = stripslashes( $val );
            }

            echo "
                    <tr>
                        <td class='align-middle'>
                            $etiqueta_numero
                        </td>
                        <td class='align-middle'>
                            $altura cm
                        </td>
                        <td class='align-middle'>
                            $nome
                        </td>
                        <td class='align-middle'>
                            $latitude
                        </td>
                        <td class='align-middle'>
                            $longitude
                        </td>
                        <td class='align-middle'>
                            $caixa_etiqueta_numero
                        </td>
                    </tr>
            ";
        }

        echo "
                </tbody>
            </table>
        ";

        return;
    }

    // header("location: /magnani-inspections");

?>