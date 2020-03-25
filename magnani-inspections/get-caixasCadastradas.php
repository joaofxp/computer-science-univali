<?php
    include("pgsql.php");

    $result = pg_query($conn, "SELECT * FROM caixa ORDER BY etiqueta_numero");

    if(pg_num_rows($result) == 0) 
        echo "
            <tr>
                <td colspan='7'>Nenhuma caixa cadastrada.</td>
            </tr>
        ";

    $caixas_html = "";
    
    while ($row = pg_fetch_array($result)) {
        foreach ($row AS $key => $val){
            $$key = stripslashes( $val );
        }

        $exposta = ($exposta == 't') ? "Sim" : "Não";

        echo "
            <tr>
                <td class='align-middle'>
                    $etiqueta_numero
                </td>
                <td class='align-middle'>
                    $exposta
                </td>
                <td class='align-middle'>
                    $capacidade_watts
                </td>
                <td class='align-middle'>
                    $latitude
                </td>
                <td class='align-middle'>
                    $longitude
                </td>
                <td class='align-middle'>
                    <button name='btn_deletar_caixa' id='btn_deletar_caixa' class='btn btn-danger btn-sm btn-block font-weight-bold' style='padding-top:.05rem;padding-bottom:.05rem' onclick='deletarRegistro($etiqueta_numero,caixaDeletar)'>X</button>
                </td>
            </tr>
        ";

        $caixas_html .= "<option value='$etiqueta_numero'>$etiqueta_numero</option>";
    }

    echo  "
        <script>
            $(\"#caixa_etiqueta_numero\").html(\"$caixas_html\");
        </script>
    ";
?>