<?php

    include("pgsql.php");

    if(addslashes(!empty($_GET['mes']))){
        $mesInicial = date("Y-m-d",strtotime(addslashes($_GET['mes'])));
        $mesFinal = date("Y-m-t",strtotime($mesInicial));
        
        $result = pg_query($conn, "
            select 
                COUNT(id) as postes_avaliados_mes
            from 
                inspecao
            where 
                inspecao.data_inspecao 
            BETWEEN
                '$mesInicial' and '$mesFinal'
        ");

        if(pg_num_rows($result) == 0)
            echo "
                Nenhum poste avaliado durante este período.
            ";

        while ($row = pg_fetch_array($result)) {
            foreach ($row AS $key => $val){
                $$key = stripslashes( $val );
            }

            echo "
                <hr>
                
                Quantidade de postes avaliados: $postes_avaliados_mes
            ";
        }

        return;    
        

    }

    // header("location: /magnani-inspections");

?>