package compilador.recovery;

import compilador.analisadorsintatico.AnalisadorConstants;

public class First {
    static public final RecoverySet analisadorSintatico = new RecoverySet();
    static public final RecoverySet comentario = new RecoverySet();
    static public final RecoverySet identificadorDoPrograma = new RecoverySet();
    static public final RecoverySet declaracaoDeConstantesEVariaveis = new RecoverySet();
    static public final RecoverySet declaracaoDeConstantes = new RecoverySet();
    static public final RecoverySet constantes = new RecoverySet();
    static public final RecoverySet declaracaoDeVariaveis = new RecoverySet();
    static public final RecoverySet variaveis = new RecoverySet();
    static public final RecoverySet tipo = new RecoverySet();
    static public final RecoverySet constantesEVariaveis = new RecoverySet();
    static public final RecoverySet listaDeIdentificadoresDeConstantes = new RecoverySet();
    static public final RecoverySet listaDeIdentificadoresDeVariaveis = new RecoverySet();
    static public final RecoverySet indice = new RecoverySet();
    static public final RecoverySet valor = new RecoverySet();
    static public final RecoverySet corpoDoPrograma = new RecoverySet();
    static public final RecoverySet listaDeComandos = new RecoverySet();
    static public final RecoverySet comando = new RecoverySet();
    static public final RecoverySet entrada = new RecoverySet();
    static public final RecoverySet saida = new RecoverySet();
    static public final RecoverySet selecao = new RecoverySet();
    static public final RecoverySet repeticao = new RecoverySet();
    static public final RecoverySet expressao = new RecoverySet();
    static public final RecoverySet item = new RecoverySet();

    static {
        analisadorSintatico.add(AnalisadorConstants.EOF);
        comentario.add(AnalisadorConstants.PALAVRA_RESERVADA_PROGRAM);

        declaracaoDeConstantesEVariaveis.add(AnalisadorConstants.PALAVRA_RESERVADA_EXECUTE);
        constantesEVariaveis.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES);
        declaracaoDeConstantes.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES); // ou talvez variable
        constantes.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES); // ou talvez variable, ou constantes ou tipo

        declaracaoDeVariaveis.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES); // ou talvez variable, ou tipo
        variaveis.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES); // ou talvez variable ou tipo

        tipo.add(AnalisadorConstants.PALAVRA_RESERVADA_IS);

        listaDeIdentificadoresDeConstantes.add(AnalisadorConstants.CONSTANTE_NUMERICA_INTEIRA);
        listaDeIdentificadoresDeConstantes.add(AnalisadorConstants.CONSTANTE_NUMERICA_REAL);
        listaDeIdentificadoresDeConstantes.add(AnalisadorConstants.CONSTANTE_LITERAL);

        listaDeIdentificadoresDeVariaveis.add(AnalisadorConstants.SIMBOLO_ESPECIAL_PONTO);

        indice.add(AnalisadorConstants.SIMBOLO_ESPECIAL_VIRGULA);
        indice.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES);

        valor.add(AnalisadorConstants.SIMBOLO_ESPECIAL_PONTO);

        corpoDoPrograma.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES);
        listaDeComandos.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES);

        comando.add(AnalisadorConstants.SIMBOLO_ESPECIAL_PONTO);

        entrada.add(AnalisadorConstants.SIMBOLO_ESPECIAL_PONTO);
        entrada.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES);
        saida.add(AnalisadorConstants.SIMBOLO_ESPECIAL_PONTO);
        saida.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES);
        selecao.add(AnalisadorConstants.SIMBOLO_ESPECIAL_PONTO);
        selecao.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES);
        repeticao.add(AnalisadorConstants.SIMBOLO_ESPECIAL_PONTO);
        repeticao.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES);

        expressao.add(AnalisadorConstants.PALAVRA_RESERVADA_TO);
        expressao.add(AnalisadorConstants.PALAVRA_RESERVADA_IS);

        identificadorDoPrograma.add(AnalisadorConstants.EOF);

        item.add(AnalisadorConstants.SIMBOLO_ESPECIAL_VIRGULA);
        item.add(AnalisadorConstants.SIMBOLO_ESPECIAL_FECHACHAVES);

    }
}
