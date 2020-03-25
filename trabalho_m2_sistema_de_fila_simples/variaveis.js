// var tipoDistribuicaoChegada;
// var tipoDistribuicaoServico;
// var parametrosChegada;
// var parametrosServico;

var multiplicador = 1;

var entidadesGeradas = [];
var entidadesEmFila = [];
var entidadesEmFilaStore = [];
var valoresChegadaGerados = [];
var valoresServicoGerados = [];

var duracaoReplicacao;
var comFila;

var limiteFila;
var limiteChegadas;
var limiteDuracaoReplicacao;

var pausar = false;
var emServico = false;

var qtdChegadas;
var qtdServico;
var qtdSaidas;
var qtdEmFila;
var qtdFilaMaxima;
var qtdEntidadesSimultaneasMaxima;
var qtdTempoMedioNoSistema;
var qtdTempoDoSistema;
var qtdTaxaOcupacao;
var qtdTempoMedioEntidadeFila;
var qtdNumMedioEntidadesNaFila;

var tempoRelogio;
var tempoFinalServico;