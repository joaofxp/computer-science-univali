<!DOCTYPE html>

<html>

    <?php include( "header.php") ?>

    <?php
        $result = pg_query($conn, "SELECT * FROM poste_material ORDER BY nome");

        $posteMateriais = array();

        $caixas = array();

        while ($row = pg_fetch_array($result)) {
            foreach ($row AS $key => $val){
                $$key = stripslashes( $val );
            }

            $posteMateriais[$id] = array("id" => $id,"nome" => $nome);
        }

        $result = pg_query($conn, "SELECT * FROM caixa ORDER BY etiqueta_numero");

        while ($row = pg_fetch_array($result)) {
            foreach ($row AS $key => $val){
                $$key = stripslashes( $val );
            }

            $caixas[$etiqueta_numero] = array(
                "etiqueta_numero" => $etiqueta_numero,
                "exposta" => $exposta,
                "capacidade_watts" => $capacidade_watts,
                "latitude" => $latitude,
                "longitude" => $longitude
            );
        }
    ?>

    <body>

        <link rel="stylesheet" type="text/css" href="css/index/style.css">

        <?php include( "top.html") ?>

        <div class="container-fluid">
            <div class="row">
                <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                    <div class="sidebar-sticky">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" id="pills-inicio-tab" data-toggle="pill" href="#inicioTab" role="tab">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="font-weight-bold feather feather-home align-middle">
                                        <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                        <polyline points="9 22 9 12 15 12 15 22"></polyline>
                                    </svg>
                                    <span class="align-middle h6">Início</span>
                                </a>
                            </li>
                            <li>
                                <hr class="mt-1 mb-2">
                            </li>
                            <li>
                                <h6 class="justify-content-between px-3 mt-0 mb-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-zap">
                                        <polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"></polygon>
                                    </svg>
                                    <span class="font-weight-bold pl-1 align-middle">Poste</span>
                                </h6>
                            </li>
                            <li class="mx-4 nav-item">
                                <a class="nav-link" id="pills-poste-cadastro-tab" data-toggle="pill" href="#pills-poste-cadastro" role="tab" aria-controls="pills-poste-cadastro" aria-selected="false">
                                    Cadastro
                                </a>
                            </li>
                            <li class="mx-4 nav-item">
                                <a class="nav-link" id="pills-poste-listagem-tab" data-toggle="pill" href="#pills-poste-listagem" role="tab" aria-controls="pills-poste-listagem" aria-selected="false" onclick="postesCadastrados()">
                                    Listagem
                                </a>
                            </li>
                            <!-- <li class="mx-4 nav-item">
                                <a class="nav-link" id="pills-poste-material-cadastro-tab" data-toggle="pill" href="#pills-poste-material-cadastro" role="tab" aria-controls="pills-poste-material-cadastro" aria-selected="false">
                                    Cadastro de Material
                                </a>
                            </li> -->
                            <li>
                                <hr class="mt-1 mb-2">
                            </li>
                            <li>
                                <h6 class="justify-content-between px-3 mt-1 mb-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-box">
                                        <path d="M12.89 1.45l8 4A2 2 0 0 1 22 7.24v9.53a2 2 0 0 1-1.11 1.79l-8 4a2 2 0 0 1-1.79 0l-8-4a2 2 0 0 1-1.1-1.8V7.24a2 2 0 0 1 1.11-1.79l8-4a2 2 0 0 1 1.78 0z"></path>
                                        <polyline points="2.32 6.16 12 11 21.68 6.16"></polyline>
                                        <line x1="12" y1="22.76" x2="12" y2="11"></line>
                                    </svg>
                                    <span class="font-weight-bold pl-1 align-middle">Caixa</span>
                                </h6>
                            </li>
                            <li class="mx-4 nav-item">
                                <a class="nav-link" id="pills-caixa-cadastro-tab" data-toggle="pill" href="#pills-caixa-cadastro" role="tab" aria-controls="pills-caixa-cadastro" aria-selected="false">
                                    Cadastro
                                </a>
                            </li>
                            <li class="mx-4 nav-item">
                                <a class="nav-link" id="pills-caixa-listagem-tab" data-toggle="pill" href="#pills-caixa-listagem" role="tab" aria-controls="pills-caixa-listagem" aria-selected="false" onclick="caixasCadastradas()">
                                    Listagem
                                </a>
                            </li>
                            <li>
                                <hr class="mt-1 mb-2">
                            </li>
                            <li>
                                <h6 class="justify-content-between px-3 mt-1 mb-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search">
                                        <circle cx="11" cy="11" r="8"></circle>
                                        <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                    </svg>
                                    <span class="font-weight-bold pl-1 align-middle">Inspeção</span>
                                </h6>
                            </li>
                            <li class="mx-4 nav-item">
                                <a class="nav-link" id="pills-inspecao-cadastro-tab" data-toggle="pill" href="#pills-inspecao-cadastro" role="tab" aria-controls="pills-inspecao-cadastro" aria-selected="false">
                                    Cadastro
                                </a>
                            </li>
                            <li class="mx-4 nav-item">
                                <a class="nav-link" id="pills-inspecao-listagem-tab" data-toggle="pill" href="#pills-inspecao-listagem" role="tab" aria-controls="pills-inspecao-listagem" aria-selected="false" onclick="inspecoesCadastradas()">
                                    Listagem
                                </a>
                            </li>
                            <li>
                                <hr class="mt-1 mb-2">
                            </li>
                            <li>
                                <h6 class="justify-content-between px-3 mt-1 mb-1">
                                    <svg class="feather feather-bar-chart-2 align-middle" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                    stroke-linecap="round" stroke-linejoin="round">
                                        <line x1="18" y1="20" x2="18" y2="10"></line>
                                        <line x1="12" y1="20" x2="12" y2="4"></line>
                                        <line x1="6" y1="20" x2="6" y2="14"></line>
                                    </svg>
                                    <span class="font-weight-bold pl-1 align-middle">Relatórios</span>
                                </h6>
                            </li>
                            <li class="nav-item">
                                <a class="ml-4 nav-link" id="pills-postes-nao-inspecionados-tab" data-toggle="pill" href="#pills-postes-nao-inspecionados" role="tab" aria-controls="pills-postes-nao-inspecionados" aria-selected="false">
                                    Postes não inspecionados
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="ml-4 nav-link mr-0" id="pills-n-postes-inspecionados-tab" data-toggle="pill" href="#pills-n-postes-inspecionados" role="tab" aria-controls="pills-n-postes-inspecionados" aria-selected="false">
                                    Nº de Postes Inspecionados
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="ml-4 nav-link" id="pills-postes-por-condicao-tab" data-toggle="pill" href="#pills-postes-por-condicao" role="tab" aria-controls="pills-postes-por-condicao" aria-selected="false">
                                    Postes por condição
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="ml-4 nav-link" id="pills-saude-das-caixas-tab" data-toggle="pill" href="#pills-saude-das-caixas" role="tab" aria-controls="pills-saude-das-caixas" aria-selected="false">
                                    Saúde das caixas
                                </a>
                            </li>
                            <li>
                                <hr class="mt-1 mb-2">
                            </li>

                        </ul>
                        <footer class="fixed-bottom footer text-center bg-dark text-center" style="position: absolute; bottom:0px;">
                            <span class="">&copy; Copyright - Magnani Inspections</span>
                        </footer>
                    </div>
                </nav>
                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="inicioTab" role="tabpanel" aria-labelledby="inicioTab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Início</h1>
                            </div>
                            <h4>Selecione uma das opções no menu à esquerda.</h4>

                            <?php
                                if (isset($_GET["Sucesso"]) AND isset($_GET["Texto"])) {
                                    $texto = $_GET["Texto"];
                                    echo "
                                        <br>
                                        <div class='alert alert-success' role='alert'>
                                            <div style=''><b>$texto</b></div>
                                        </div>
                                    ";
                                }
                                if (isset($_GET["Falha"]) AND isset($_GET["Texto"])) {
                                    $texto = $_GET["Texto"];
                                    echo "
                                        <br>
                                        <div class='alert alert-danger' role='alert'>
                                            <div style=''><b>$texto</b></div>
                                        </div>
                                    ";
                                }
                            ?>
                        </div>
                        <div class="tab-pane fade" id="pills-poste-cadastro" role="tabpanel" aria-labelledby="pills-poste-cadastro-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Cadastro de Poste</h1>
                            </div>
                            <form action="post-posteCadastro.php" method="post">
                                <div class="form-group">
                                    <label for="etiqueta_numero">Número da Etiqueta</label>
                                    <input type="number" class="form-control col-md-2" name="etiqueta_numero" id="etiqueta_numero" placeholder="123456" min="1" max="999999" step="1" required>
                                </div>
                                <div class="form-group">
                                    <label for="altura">Altura do Poste (cm)</label>
                                    <input type="number" class="form-control col-md-1" name="altura" id="altura" placeholder="160" min="1" max="10000" step="0.1" required>
                                </div>
                                <div class="form-group">
                                    <label for="material_id">Material do Poste</label>
                                    <select class="form-control col-md-2" name="material_id" id="ma/terial_id" required>
                                        <?php
                                            foreach ($posteMateriais as $id => $value) {
                                                echo "<option value='$id'>" . $posteMateriais[$id]["nome"] . "</option>";
                                            }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="latitude">Latitude <small>(apenas números)</small></label>
                                    <input type="number" class="form-control col-md-2" name="latitude" id="latitude" max="9999999999" step="0.1" required>
                                </div>
                                <div class="form-group">
                                    <label for="longitude">Longitude <small>(apenas números)</small></label>
                                    <input type="number" class="form-control col-md-2" name="longitude" id="longitude" max="9999999999" step="0.1" required>
                                </div>
                                <div class="form-group">
                                    <label for="caixa_etiqueta_numero">Caixa de Alimentação</label>
                                    <select class="form-control col-md-2" name="caixa_etiqueta_numero" id="caixa_etiqueta_numero" required>
                                        <?php
                                            foreach ($caixas as $etiqueta_numero => $valor) {
                                                echo "<option value='$etiqueta_numero'>$etiqueta_numero</option>";
                                            }
                                        ?>
                                    </select>
                                </div>
                                <hr>
                                <button type="submit" class="btn btn-success">Cadastrar</button>
                                <br>
                                <br>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="pills-poste-listagem" role="tabpanel" aria-labelledby="pills-poste-listagem-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Listagem de Poste</h1>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-sm table-hover">
                                    <thead class="thead-dark">
                                        <tr >
                                            <th>Etiqueta Número</th>
                                            <th>Altura</th>
                                            <th>Material</th>
                                            <th>Latitude</th>
                                            <th>Longitude</th>
                                            <th>Caixa Etiqueta</th>
                                            <th style="width:5%">Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody class="postes_cadastrados"></tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-poste-material-cadastro" role="tabpanel" aria-labelledby="pills-poste-material-cadastro-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Cadastro de Material de Poste</h1>
                            </div>
                            <form action="post-posteMaterialCadastro.php" method="post">
                                <div class="form-group">
                                  <label for="nome">Nome do Material</label>
                                  <input type="text" class="form-control col-md-3" name="nome" id="nome" placeholder="Madeira">
                                </div>
                                <hr>
                                <button type="submit" class="btn btn-success">Cadastrar</button>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="pills-caixa-cadastro" role="tabpanel" aria-labelledby="pills-caixa-cadastro-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Cadastro de Caixa</h1>
                            </div>
                            <form action="post-caixaCadastro.php" method="post">
                                <div class="form-group">
                                    <label for="etiqueta_numero">Número da Etiqueta</label>
                                    <input type="number" class="form-control col-md-2" name="etiqueta_numero" id="etiqueta_numero" placeholder="123456" min="1" max="999999" step="1" required>
                                </div>

                                <div class="form-group">
                                    <label for="capacidade_watts">Capacidade em Watts</label>
                                    <input type="number" class="form-control col-md-2" name="capacidade_watts" id="capacidade_watts" min="1" max="99999" step="1" required>
                                </div>
                                <div class="form-group">
                                    <label for="latitude">Latitude <small>(apenas números)</small></label>
                                    <input type="number" class="form-control col-md-2" name="latitude" id="latitude" max="9999999999" step="1" required>
                                </div>
                                <div class="form-group">
                                    <label for="longitude">Longitude <small>(apenas números)</small></label>
                                    <input type="number" class="form-control col-md-2" name="longitude" id="longitude" max="9999999999" step="1" required>
                                </div>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="exposta" id="exposta" value="1">
                                    Caixa está exposta
                                  </label>
                                </div>
                                <hr>
                                <button type="submit" class="btn btn-success">Cadastrar</button>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="pills-caixa-listagem" role="tabpanel" aria-labelledby="pills-caixa-listagem-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Listagem de Caixa</h1>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-sm table-hover">
                                    <thead class="thead-dark">
                                        <tr >
                                            <th>Etiqueta Número</th>
                                            <th>Exposta</th>
                                            <th>Capacidade Watts</th>
                                            <th>Latitude</th>
                                            <th>Longitude</th>
                                            <th style="width:5%">Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody class="caixas_cadastradas">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-inspecao-cadastro" role="tabpanel" aria-labelledby="pills-inspecao-cadastro-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Cadastro de Inspeção</h1>
                            </div>
                            <form action="post-inspecaoCadastro.php" method="post">
                                <div class="form-group">
                                    <label for="poste_etiqueta_numero">Etiqueta do Poste</label>
                                        <select class="form-control col-md-2" name="poste_etiqueta_numero" id="poste_etiqueta_numero" required>
                                            <?php
                                                $result = pg_query($conn, "SELECT * FROM postes_cadastrados");

                                                $print = pg_num_rows($result);

                                                while ($row = pg_fetch_array($result)) {
                                                    foreach ($row AS $key => $val){
                                                        $$key = stripslashes( $val );
                                                    }

                                                    echo "<option value='$etiqueta_numero'>$etiqueta_numero</option>";
                                                }
                                            ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                  <label for="data_inspecao">Data da Inspeção</label>
                                  <input type="date" class="form-control col-md-2" name="data_inspecao" id="data_inspecao" placeholder="25/11/2018" required>
                                </div>

                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="estado_adequado" id="estado_adequado" value="1">
                                    Poste em estado adequado
                                  </label>
                                </div>

                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="estado_prumo" id="estado_prumo" value="1">
                                    Poste está prumo
                                  </label>
                                </div>

                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="precisa_manutencao" id="precisa_manutencao" value="1">
                                    Precisa de manutenção
                                  </label>
                                </div>

                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="fiacao_adequada" id="fiacao_adequada" value="1">
                                    Poste está com a fiação adequada
                                  </label>
                                </div>

                                <hr>
                                <button type="submit" class="btn btn-success">Cadastrar</button>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="pills-inspecao-listagem" role="tabpanel" aria-labelledby="pills-inspecao-listagem-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Listagem de Inspeção</h1>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-sm table-hover">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Data da Inspeção</th>
                                            <th>Etiqueta do Poste</th>
                                            <th>Estado Adequado</th>
                                            <th>Prumo</th>
                                            <th>Necessita Manutenção</th>
                                            <th>Fiação Adequada</th>
                                            <th style="width:5%">Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody class="inspecoes_cadastradas"></tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-postes-nao-inspecionados" role="tabpanel" aria-labelledby="pills-postes-nao-inspecionados-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Relatório de Postes não Inspecionados</h1>
                            </div>
                            <div class="form-group">
                                <label for="postes-nao-inspecionados-mes">Mês Inicial</label>
                                <select class="form-control col-md-2" name="postes-nao-inspecionados-mes" id="postes-nao-inspecionados-mes">
                                    <option value='2018-1-1'>Janeiro</option>
                                    <option value='2018-2-1'>Fevereiro</option>
                                    <option value='2018-3-1'>Março</option>
                                    <option value='2018-4-1'>Abril</option>
                                    <option value='2018-5-1'>Maio</option>
                                    <option value='2018-6-1'>Junho</option>
                                    <option value='2018-7-1'>Julho</option>
                                    <option value='2018-8-1'>Agosto</option>
                                    <option value='2018-9-1'>Setembro</option>
                                    <option value='2018-10-1'>Outubro</option>
                                    <option value='2018-11-1'>Novembro</option>
                                    <option value='2018-12-1'>Dezembro</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="postes-nao-inspecionados-mes-final">Mês Final</label>
                                <select class="form-control col-md-2" name="postes-nao-inspecionados-mes-final" id="postes-nao-inspecionados-mes-final">
                                    <option value='2018-1-1'>Janeiro</option>
                                    <option value='2018-2-1'>Fevereiro</option>
                                    <option value='2018-3-1'>Março</option>
                                    <option value='2018-4-1'>Abril</option>
                                    <option value='2018-5-1'>Maio</option>
                                    <option value='2018-6-1'>Junho</option>
                                    <option value='2018-7-1'>Julho</option>
                                    <option value='2018-8-1'>Agosto</option>
                                    <option value='2018-9-1'>Setembro</option>
                                    <option value='2018-10-1'>Outubro</option>
                                    <option value='2018-11-1'>Novembro</option>
                                    <option value='2018-12-1'>Dezembro</option>
                                </select>
                            </div>

                            <input name="postes-nao-inspecionados-botao" id="postes-nao-inspecionados" class="btn btn-info" type="button" onclick="relatorioPostesNaoInspecionados($('#postes-nao-inspecionados-mes').val(),$('#postes-nao-inspecionados-mes-final').val())" value="Gerar Relatório">

                            <div class="postes-nao-inspecionados-div table-responsive"></div>

                        </div>
                        <div class="tab-pane fade" id="pills-n-postes-inspecionados" role="tabpanel" aria-labelledby="pills-n-postes-inspecionados-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Relatório Quantitativo de Postes Inspecionados</h1>
                            </div>

                            <div class="form-group">
                                <label for="n-postes-inspecionados-mes">Mês</label>
                                <select class="form-control col-md-2" name="n-postes-inspecionados-mes" id="n-postes-inspecionados-mes">
                                    <option value='2018-1-1'>Janeiro</option>
                                    <option value='2018-2-1'>Fevereiro</option>
                                    <option value='2018-3-1'>Março</option>
                                    <option value='2018-4-1'>Abril</option>
                                    <option value='2018-5-1'>Maio</option>
                                    <option value='2018-6-1'>Junho</option>
                                    <option value='2018-7-1'>Julho</option>
                                    <option value='2018-8-1'>Agosto</option>
                                    <option value='2018-9-1'>Setembro</option>
                                    <option value='2018-10-1'>Outubro</option>
                                    <option value='2018-11-1'>Novembro</option>
                                    <option value='2018-12-1'>Dezembro</option>
                                </select>
                            </div>

                            <input name="n-postes-inspecionados-botao" id="n-postes-inspecionados" class="btn btn-info" type="button" onclick="relatorioNPostesInspecionados($('#n-postes-inspecionados-mes').val())" value="Gerar Relatório">

                            <div class="n-postes-inspecionados-div table-responsive"></div>
                        </div>
                        <div class="tab-pane fade" id="pills-postes-por-condicao" role="tabpanel" aria-labelledby="pills-postes-por-condicao-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Relatório de Postes por Condição</h1>
                            </div>

                            <div class="form-group">
                                <label for="postes-por-condicao-mes">Mês</label>
                                <select class="form-control col-md-2" name="postes-por-condicao-mes" id="postes-por-condicao-mes">
                                    <option value='2018-1-1'>Janeiro</option>
                                    <option value='2018-2-1'>Fevereiro</option>
                                    <option value='2018-3-1'>Março</option>
                                    <option value='2018-4-1'>Abril</option>
                                    <option value='2018-5-1'>Maio</option>
                                    <option value='2018-6-1'>Junho</option>
                                    <option value='2018-7-1'>Julho</option>
                                    <option value='2018-8-1'>Agosto</option>
                                    <option value='2018-9-1'>Setembro</option>
                                    <option value='2018-10-1'>Outubro</option>
                                    <option value='2018-11-1'>Novembro</option>
                                    <option value='2018-12-1'>Dezembro</option>
                                </select>
                            </div>

                            <input name="postes-por-condicao-botao" id="postes-por-condicao" class="btn btn-info" type="button" onclick="relatorioPostesPorCondicao($('#postes-por-condicao-mes').val())" value="Gerar Relatório">

                            <div class="postes-por-condicao-div table-responsive"></div>
                        </div>
                        <div class="tab-pane fade" id="pills-saude-das-caixas" role="tabpanel" aria-labelledby="pills-saude-das-caixas-tab">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                                <h1 class="h2">Relatório de Saúde das Caixas</h1>
                            </div>

                            <div class="form-group">
                                <label for="caixa-saude-mes-inicial">Mês Inicial</label>
                                <select class="form-control col-md-2" name="caixa-saude-mes-inicial" id="caixa-saude-mes-inicial">
                                    <option value='2018-1-1'>Janeiro</option>
                                    <option value='2018-2-1'>Fevereiro</option>
                                    <option value='2018-3-1'>Março</option>
                                    <option value='2018-4-1'>Abril</option>
                                    <option value='2018-5-1'>Maio</option>
                                    <option value='2018-6-1'>Junho</option>
                                    <option value='2018-7-1'>Julho</option>
                                    <option value='2018-8-1'>Agosto</option>
                                    <option value='2018-9-1'>Setembro</option>
                                    <option value='2018-10-1'>Outubro</option>
                                    <option value='2018-11-1'>Novembro</option>
                                    <option value='2018-12-1'>Dezembro</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="caixa-saude-mes-final">Mês Final</label>
                                <select class="form-control col-md-2" name="caixa-saude-mes-final" id="caixa-saude-mes-final">
                                    <option value='2018-1-1'>Janeiro</option>
                                    <option value='2018-2-1'>Fevereiro</option>
                                    <option value='2018-3-1'>Março</option>
                                    <option value='2018-4-1'>Abril</option>
                                    <option value='2018-5-1'>Maio</option>
                                    <option value='2018-6-1'>Junho</option>
                                    <option value='2018-7-1'>Julho</option>
                                    <option value='2018-8-1'>Agosto</option>
                                    <option value='2018-9-1'>Setembro</option>
                                    <option value='2018-10-1'>Outubro</option>
                                    <option value='2018-11-1'>Novembro</option>
                                    <option value='2018-12-1'>Dezembro</option>
                                </select>
                            </div>

                            <input name="caixa-saude-botao" id="caixa-saude" class="btn btn-info" type="button" onclick="relatorioCaixaSaude($('#caixa-saude-mes-inicial').val() , $('#caixa-saude-mes-final').val())" value="Gerar Relatório">

                            <div class="caixa-saude-div table-responsive"></div>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <?php include( "footer.php") ?>
    </body>

</html>