<?php
    include("pgsql.php");

    $result = pg_query($conn, "SELECT * FROM inspecao ORDER BY data_inspecao");

    if(pg_num_rows($result) == 0) 
        echo "
            <tr>
                <td colspan='7'>Nenhuma inspeção cadastrada.</td>
            </tr>
        ";

    while ($row = pg_fetch_array($result)) {
        foreach ($row AS $key => $val){
            $$key = stripslashes( $val );
        }

        $estado_adequado = ($estado_adequado == 't') ? "Sim" : "Não";
        $estado_prumo = ($estado_prumo == 't') ? "Sim" : "Não";
        $precisa_manutencao = ($precisa_manutencao == 't') ? "Sim" : "Não";
        $fiacao_adequada = ($fiacao_adequada == 't') ? "Sim" : "Não";

        $data_inspecao = date("d/m/Y", strtotime($data_inspecao));

        echo "
            <tr>
                <td class='align-middle'>
                    $data_inspecao
                </td>
                <td class='align-middle'>
                    $poste_etiqueta_numero
                </td>
                <td class='align-middle'>
                    $estado_adequado
                </td>
                <td class='align-middle'>
                    $estado_prumo
                </td>
                <td class='align-middle'>
                    $precisa_manutencao
                </td>
                <td class='align-middle'>
                    $fiacao_adequada
                </td>
                <td class='align-middle'>
                    <button name='btn_deletar_inspecao' id='btn_deletar_inspecao' class='btn btn-danger btn-sm btn-block font-weight-bold' style='padding-top:.05rem;padding-bottom:.05rem' onclick='deletarRegistro($id,inspecaoDeletar)'>X</button>
                </td>
            </tr>
        ";
    }
?>