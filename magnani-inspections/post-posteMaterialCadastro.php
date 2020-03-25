<?php

    include("pgsql.php");

    // echo "<pre>";
    // print_r($_POST);

    if(addslashes(!empty($_POST['nome']))){
        $nome = addslashes($_POST['nome']);

        $status = pg_query($conn, "
            INSERT INTO 
                poste_material(nome)
            VALUES
                ('$nome');
        ");

        
        // if($status)
        //     echo "Cadastrado";
        // else
        //     echo "Erro ao cadastrar";
    }

    header("location: /magnani-inspections");

?>