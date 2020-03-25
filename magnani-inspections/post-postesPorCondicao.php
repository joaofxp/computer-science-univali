<?php

    include("pgsql.php");

    if(addslashes(!empty($_GET['mes']))){
        $mesInicial = date("Y-m-d",strtotime(addslashes($_GET['mes'])));
        $mesFinal = date("Y-m-t",strtotime($mesInicial));
        
        $result = pg_query($conn, "
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
        ");

        echo "<hr>";

        if(pg_num_rows($result) == 0)
            echo "
                Nenhum poste cadastrado.
            ";

        while ($row = pg_fetch_array($result)) {
            foreach ($row AS $key => $val){
                $$key = stripslashes( $val );
            }

            if($poste_estado_adequado != "")
                echo "Quantidade de postes adequados: $poste_estado_adequado <br> ";

            if($poste_estado_inadequado != "")
                echo "Quantidade de postes inadequados: $poste_estado_inadequado <br> ";
        }

        return;
    }

    // header("location: /magnani-inspections");

?>