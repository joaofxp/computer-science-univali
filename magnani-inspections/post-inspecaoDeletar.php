<?php

    include("pgsql.php");

    if(addslashes(!empty($_GET['id']))){
        $id = addslashes($_GET['id']);
    
        $status = pg_query($conn, "
            DELETE FROM 
                inspecao
            WHERE
                id = $id;
        ");
    }

    header("location: /magnani-inspections");

?>