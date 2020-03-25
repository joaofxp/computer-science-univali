<?php

    include("pgsql.php");

    // echo "<pre>";
    // print_r($_POST);

    if(addslashes(!empty($_POST['etiqueta_numero'])) AND addslashes(!empty($_POST['capacidade_watts'])) AND addslashes(!empty($_POST['latitude'])) AND addslashes(!empty($_POST['longitude']))){

        $etiquetaNumero = addslashes($_POST['etiqueta_numero']);
        $exposta = (isset($_POST['exposta'])) ? "true" : "false";
        $capacidadeWatts = addslashes($_POST['capacidade_watts']);
        $latitude = addslashes($_POST['latitude']);
        $longitude = addslashes($_POST['longitude']);

        $latitudeFormat = "";
        $longitudeFormat = "";

        for ($i=0; $i < strlen($latitude); $i++) { 
            if($i == 2)
                $latitudeFormat .= ("." . $latitude[$i]);
            else
                $latitudeFormat .= $latitude[$i];
        }

        for ($i=0; $i < strlen($longitude); $i++) { 
            if($i == 2)
                $longitudeFormat .= ("." . $longitude[$i]);
            else
                $longitudeFormat .= $longitude[$i];
        }

        $latitude = $latitudeFormat;
        $longitude = $longitudeFormat;

        $status = pg_query($conn, "
            INSERT INTO 
                caixa(etiqueta_numero, exposta,capacidade_watts, latitude, longitude)
            VALUES
                ($etiquetaNumero, $exposta, $capacidadeWatts, $latitude, $longitude);
        ");

        if(pg_affected_rows($status) == 0) {
            header("location: /magnani-inspections?Falha&Texto=Não é possível cadastrar uma caixa com o mesmo número de etiqueta");
        }
        else
            header("location: /magnani-inspections?Sucesso&Texto=Caixa cadastrada com sucesso!");
    }

    // header("location: /magnani-inspections");
?>