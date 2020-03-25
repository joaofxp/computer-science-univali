<?php

    include("pgsql.php");

    if(addslashes(!empty($_GET['etiqueta_numero']))){
        $etiquetaNumero = addslashes($_GET['etiqueta_numero']);
    
        $status = pg_query($conn, "
            DELETE FROM 
                poste
            WHERE
                etiqueta_numero = $etiquetaNumero
        ");
    }

    header("location: /magnani-inspections");

?>