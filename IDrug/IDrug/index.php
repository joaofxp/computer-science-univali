<!DOCTYPE html>

<html>

    <?php include( "header.php") ?>

    <body>
        <main>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <!-- <a class="navbar-brand" href="#">Menu</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button> -->
                <div class="" id="navbarNav" role="tablist">
                    <!-- <div class="collapse navbar-collapse" id="navbarNav" role="tablist"> -->
                    <ul class="nav " id="nav-tab" role="tablist">
                        <!-- <ul class="nav navbar-nav" id="nav-tab" role="tablist"> -->
                        <li class="nav-item active">
                            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home"
                                role="tab" aria-controls="nav-home" aria-selected="true">Produtos<span
                                    class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-item nav-link" id="nav-farmacia-tab" data-toggle="tab" href="#nav-farmacia"
                                role="tab" aria-controls="nav-farmacia" aria-selected="false">Farmácias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
                                role="tab" aria-controls="nav-contact" aria-selected="false">Produtos da Farmácia</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                    <div class="row py-2 m-0">

                        <?php
                            $result = pg_query($conn, "SELECT * FROM produto ORDER BY nome");

                            $farmacias = array();

                            while ($row = pg_fetch_array($result)) {
                                foreach ($row AS $key => $val){
                                    $$key = stripslashes( $val );
                                }

                                $farmacias[$id] = array(
                                    "id" => $id,
                                    "nome" => $nome,
                                    "descricao" => $descricao,
                                    "preco" => $preco
                                );

                                echo(
                                    "
                                    <div class='col-6 py-2'>
                                        <div class='card'>
                                            <div class='card-body'>
                                                <h5 class='card-title'>$nome</h5>
                                                <h6 class='card-subtitle mb-2 text-muted'>$descricao</h6>
                                                <p class='card-text'>R$". number_format($preco,2)."</p>
                                                <a href='#' class='card-link'>Comprar</a>
                                            </div>
                                        </div>
                                    </div>
                                    "
                                );
                            }
                        ?>
                    </div>
                </div>

                <div class="tab-pane fade" id="nav-farmacia" role="tabpanel" aria-labelledby="nav-farmacia-tab">
                    <div class="row py-2 m-0">
                        <?php
                            $result = pg_query($conn, "SELECT * FROM farmacia ORDER BY nome");

                            $farmacias = array();

                            while ($row = pg_fetch_array($result)) {
                                foreach ($row AS $key => $val){
                                    $$key = stripslashes( $val );
                                }

                                $farmacias[$id] = array(
                                    "id" => $id,
                                    "nome" => $nome,
                                    "localidade" => $localidade,
                                    "endereco" => $endereco
                                );

                                echo(
                                    "
                                    <div class='col-12 py-2'>
                                        <div class='card'>
                                            <div class='card-body'>
                                                <h5 class='card-title'>$nome</h5>
                                                <h6 class='card-subtitle mb-2 text-muted'>$localidade</h6>
                                                <p class='card-text'>$endereco</p>
                                            </div>
                                        </div>
                                    </div>
                                    "
                                );
                            }
                        ?>
                    </div>

                </div>
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                    <div class="row py-2 m-0">
                        <div class="col-12">
                            <h4>Produtos da Drogaria Droga</h4>
                        </div>
                        <?php
                            $result = pg_query($conn, "SELECT * FROM produto ORDER BY nome");

                            $farmacias = array();

                            while ($row = pg_fetch_array($result)) {
                                foreach ($row AS $key => $val){
                                    $$key = stripslashes( $val );
                                }

                                $farmacias[$id] = array(
                                    "id" => $id,
                                    "nome" => $nome,
                                    "descricao" => $descricao,
                                    "preco" => $preco
                                );

                                echo(
                                    "
                                    <div class='col-6 py-2'>
                                        <div class='card'>
                                            <div class='card-body'>
                                                <h5 class='card-title'>$nome</h5>
                                                <h6 class='card-subtitle mb-2 text-muted'>$descricao</h6>
                                                <p class='card-text'> R$". number_format($preco,2)."</p>
                                                <a href='#' class='card-link'>Comprar</a>
                                            </div>
                                        </div>
                                    </div>
                                    "
                                );
                            }
                        ?>
                    </div>
                </div>
            </div>

        </main>

        <link rel="stylesheet" type="text/css" href="css/index/style.css">

        <?php include( "footer.php") ?>
    </body>

</html>