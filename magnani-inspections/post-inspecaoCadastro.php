<?php

    include("pgsql.php");

    // echo "<pre>";
    // print_r($_POST);

    // echo "<br><br>";


    if(!empty(addslashes($_POST['poste_etiqueta_numero'])) AND !empty(addslashes($_POST['data_inspecao']))){
        $posteEtiquetaNumero = addslashes($_POST['poste_etiqueta_numero']);
        $dataInspecao = addslashes($_POST['data_inspecao']);
        $estadoAdequado = (isset($_POST['estado_adequado'])) ? "true" : "false";
        $estadoPrumo = (isset($_POST['estado_prumo'])) ? "true" : "false";
        $precisaManutencao = (isset($_POST['precisa_manutencao'])) ? "true" : "false";
        $fiacaoAdequada = (isset($_POST['fiacao_adequada'])) ? "true" : "false";

        // echo $posteEtiquetaNumero . ' | '. $dataInspecao . ' | '. $estadoAdequado . ' | '. $estadoPrumo . ' | '. $precisaManutencao . ' | '. $fiacaoAdequada;

        // echo date("Y-m-d", strtotime($dataInspecao));
        $dataInspecao = date("Y-m-d", strtotime($dataInspecao));
        $dataInicialMes = date("Y-m-1", strtotime($dataInspecao));
        $dataFinalMes = date("Y-m-t",strtotime($dataInspecao));;

        $status = pg_query($conn, "
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
                    '$dataInicialMes' and '$dataFinalMes'
                and
                    inspecao.poste_etiqueta_numero = '$posteEtiquetaNumero'
            );
        ");

        if(pg_affected_rows($status) == 0) {
            header("location: /magnani-inspections?Falha&Texto=Não é possível cadastrar duas inspeções para um poste no mesmo mês.");
        }
        else
            header("location: /magnani-inspections?Sucesso&Texto=Inspeção cadastrada com sucesso!");

    }

    // header("location: /magnani-inspections");

?>