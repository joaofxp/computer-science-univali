<?php

    include("pgsql.php");

    // echo "<pre>";
    // print_r($_POST);
    
    // echo "<br><br>";

    if(addslashes(!empty($_POST['etiqueta_numero'])) AND addslashes(!empty($_POST['altura'])) AND addslashes(!empty($_POST['material_id'])) AND addslashes(!empty($_POST['latitude'])) AND addslashes(!empty($_POST['longitude'])) AND addslashes(!empty($_POST['caixa_etiqueta_numero']))){
        $etiquetaNumero = addslashes($_POST['etiqueta_numero']);
        $altura = addslashes($_POST['altura']);
        $materialId = addslashes($_POST['material_id']);
        $latitude = addslashes($_POST['latitude']);
        $longitude = addslashes($_POST['longitude']);
        $caixaEtiquetaNumero = addslashes($_POST['caixa_etiqueta_numero']);

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
                poste(etiqueta_numero,altura,material_id,latitude,longitude,caixa_etiqueta_numero)
            VALUES
                ($etiquetaNumero, $altura, $materialId, $latitude, $longitude, $caixaEtiquetaNumero);
        ");

        if(pg_affected_rows($status) == 0) {
            header("location: /magnani-inspections?Falha&Texto=Não é possível cadastrar um poste com o mesmo número de etiqueta");
        }
        else
            header("location: /magnani-inspections?Sucesso&Texto=Poste cadastrado com sucesso!");
    }

    // header("location: /magnani-inspections");
?>