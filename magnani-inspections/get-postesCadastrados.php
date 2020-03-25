<?php

    include("pgsql.php");

    $result = pg_query($conn, "SELECT * FROM postes_cadastrados");

    $print = pg_num_rows($result);

    if(pg_num_rows($result) == 0)
        echo "
            <tr>
                <td colspan='7'>Nenhum poste cadastrado.</td>
            </tr>
        ";

    $postes_html = "";

    while ($row = pg_fetch_array($result)) {
        foreach ($row AS $key => $val){
            $$key = stripslashes( $val );
        }

        echo "
            <tr>
                <td class='align-middle'>
                    $etiqueta_numero
                </td>
                <td class='align-middle'>
                    $altura cm
                </td>
                <td class='align-middle'>
                    $nome
                </td>
                <td class='align-middle'>
                    $latitude
                </td>
                <td class='align-middle'>
                    $longitude
                </td>
                <td class='align-middle'>
                    $caixa_etiqueta_numero
                </td>
                <td class='align-middle'>
                    <button name='btn_deletar_poste' id='btn_deletar_poste' class='btn btn-danger btn-sm btn-block font-weight-bold' style='padding-top:.05rem;padding-bottom:.05rem'onclick='deletarRegistro($etiqueta_numero,posteDeletar)' role='button'>X</button>
                </td>
            </tr>
        ";

        $postes_html .= "<option value='$etiqueta_numero'>$etiqueta_numero</option>";
    }

    echo " <script>$(\"#poste_etiqueta_numero\").html(\"$postes_html\"); </script>";
?>