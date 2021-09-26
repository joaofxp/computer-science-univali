package compilador.semantico;

import compilador.analisadorsintatico.Token;

import java.util.*;
import java.util.stream.Stream;

public class AnalisadorSemantico {
    public enum CONTEXTO {ENTRADA_DADOS, ATRIBUICAO, CONSTANTE, VARIAVEL, NENHUM}

    private final String ERRO1 =  "Erro Semantico 1: identificador ja declarado -> ";
    private final String ERRO2 =  "Erro Semantico 2: identificador de variavel não indexada -> ";
    private final String ERRO3 =  "Erro Semantico 3: identificador de variavel exige indice -> ";
    private final String ERRO4 =  "Erro Semantico 4: identificador não declarado ou de constante -> ";
    private final String ERRO5 =  "Erro Semantico 5: tipo invalido para constante";
    private final String ERRO6 =  "Erro Semantico 6: identificador não declarado -> ";
    private final String ERRO7 =  "Erro Semantico 7: identificador de constante ou variavel não indexada -> ";
    private final String ERRO8 =  "Erro Semantico 8: valor invalido para constante ou variavel do tipo INTEIRO -> ";
    private final String ERRO9 =  "Erro Semantico 9: valor invalido para constante ou variavel do tipo REAL -> ";
    private final String ERRO10 = "Erro Semantico 10: valor invalido para constante ou variavel do tipo LITERAL -> ";
    private final String ERRO11 = "Erro Semantico 11: valor invalido para constante ou variavel do tipo BOOLEANO -> ";
    private final String ERRO12 = "Erro Semantico 12: valor invalido para tamanho da variável indexada ou como índice -> ";

    public List<String> erros = new ArrayList<>();

    public Boolean executar = false;

    private CONTEXTO contexto = CONTEXTO.NENHUM;

    private Integer vt = 0;
    private Integer vp = 0;
    private Integer vit = 0;
    private Integer ponteiro = 1;
    private Boolean variavelIndexada = null;
    private Stack<Integer> pilhaDeDesvios = new Stack<>();
    private List<Instrucao> areaDeInstrucoes = new ArrayList<>();
    private Map<String, union> tabelaDeSimbolos = new LinkedHashMap<>();
    private Map<String, union> tupla = new HashMap();
    private Integer tipo = null;
    private Map<String, List<String>> tabelaDeTiposEnumerados = new LinkedHashMap<>();
    private List<Integer> listaDeAtributos = new ArrayList<>();
    private Integer constIntArmazenadaAcao14 = null;
    private String idArmazenadoAcao12 = "";
    private String idArmazenadoAcao19 = "";
    private Integer enderecoInstrucaoDesvioAcao28;

    public List<Instrucao> getInstrucoes() {
        return this.areaDeInstrucoes;
    }

    /*
     * #1:
     * reconhecimento de fim de programa
     */
    public void acao1() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "STP", new Item(0)));
    }

    /*
     * #2:
     * reconhecimento do identificador de programa
     */
    public void acao2(String token) {
        if (!executar) return;

        tabelaDeSimbolos.put(token, new union(0, null, null));
    }

    /*
     * #3:
     * reconhecimento da palavra reservada not variable
     * */
    public void acao3() {
        if (!executar) return;

        contexto = CONTEXTO.CONSTANTE;
        vit = 0;
    }

    /*
     * #4:
     * reconhecimento do término da declaração de constantes ou variáveis de um determinado tipo
     * */
    public void acao4() {
        if (!executar) return;

        List<String> keyList = new ArrayList<>(tabelaDeSimbolos.keySet());
        int last_index = keyList.size() - 1;
        for (int i = last_index; i > last_index - (vp); --i)
            tabelaDeSimbolos.get(keyList.get(i)).categoria = tipo;

        vp += vit;

        switch (tipo) {
            case 1:
            case 5:
                areaDeInstrucoes.add(new Instrucao(ponteiro, "ALI", new Item(vp)));
                ponteiro++;
                break;
            case 2:
            case 6:
                areaDeInstrucoes.add(new Instrucao(ponteiro, "ALR", new Item(vp)));
                ponteiro++;
                break;
            case 3:
            case 7:
                areaDeInstrucoes.add(new Instrucao(ponteiro, "ALS", new Item(vp)));
                ponteiro++;
                break;
            case 4:
                areaDeInstrucoes.add(new Instrucao(ponteiro, "ALB", new Item(vp)));
                ponteiro++;
                break;
        }

        if (tipo == 1 || tipo == 2 || tipo == 3 || tipo == 4) {
            vp = 0;
            vit = 0;
        }
    }

    /*
     * #5:
     * reconhecimento de valor na declaração de constante
     * */
    public void acao5(Token token) {
        if (!executar) return;

        switch (tipo) {
            case 5:
                try {
                    areaDeInstrucoes.add(new Instrucao(ponteiro, "LDI", new Item(Integer.parseInt(token.image))));
                    ponteiro++;
                } catch (NumberFormatException e) {
                    erros.add(ERRO8 + e.getLocalizedMessage());
                }

                break;
            case 6:
                try {
                    areaDeInstrucoes.add(new Instrucao(ponteiro, "LDR", new Item(Float.parseFloat(token.image))));
                    ponteiro++;
                } catch (NumberFormatException e) {
                    erros.add(ERRO9 + e.getLocalizedMessage());
                }

                break;
            case 7:
                try {
                    String stringToCharArray = String.valueOf(token.image);
                    char[] charArray = stringToCharArray.toCharArray();

                    if (charArray.length > 0) {

                        if ((charArray[0] == '"' && charArray[charArray.length - 1] == '"') || (charArray[0] == '\'' && charArray[charArray.length - 1] == '\'')) {
                            areaDeInstrucoes.add(new Instrucao(ponteiro, "LDS", new Item(token.image)));
                            ponteiro++;
                        } else {
                            throw new NumberFormatException(token.image);
                        }
                    } else {
                        throw new NumberFormatException(token.image);
                    }

                } catch (NumberFormatException e) {
                    erros.add(ERRO10 + e.getLocalizedMessage());
                }

                break;
        }

        areaDeInstrucoes.add(new Instrucao(ponteiro, "STC", new Item(vp)));
        ponteiro++;
        vp = 0;
    }

    /*
     * #6:
     * reconhecimento da palavra reservada variable
     */
    public void acao6() {
        if (!executar) return;

        contexto = CONTEXTO.VARIAVEL;
    }

    /*
     * #7:
     * reconhecimento da palavra reservada natural
     */
    public void acao7() {
        if (!executar) return;

        tipo = (contexto == CONTEXTO.VARIAVEL) ? 1 : 5;
    }

    /*
     * #8:
     * reconhecimento da palavra reservada real
     */
    public void acao8() {
        if (!executar) return;

        tipo = (contexto == CONTEXTO.VARIAVEL) ? 2 : 6;
    }

    /*
     * #9:
     * reconhecimento da palavra reservada char
     */
    public void acao9() {
        if (!executar) return;

        tipo = (contexto == CONTEXTO.VARIAVEL) ? 3 : 7;
    }

    /*
     * #10:
     * reconhecimento da palavra reservada boolean
     */
    public void acao10() {
        if (!executar) return;

        if (contexto == CONTEXTO.VARIAVEL)
            tipo = 4;
        else
            erros.add(ERRO5);
    }

    /*
     * #11:
     * reconhecimento de identificador de constante
     */
    public void acao11(String token) {
        if (!executar) return;

        if (identificadorJaDeclarado(token)) {
            erros.add(ERRO1 + token);
            return;
        }

        vt++;
        vp++;
        tabelaDeSimbolos.put(token, new union(tipo, vt, null));
//        tabelaDeSimbolos.put(token, new union(null, vt, null));
    }

    /*
     * #12:
     * reconhecimento de identificador de variável
     */
    public void acao12(String token) {
        if (!executar) return;

        if (contexto == CONTEXTO.VARIAVEL) {
            if (identificadorJaDeclarado(token)) {
                erros.add(ERRO1 + token);
                return;
            }

            variavelIndexada = false;
            idArmazenadoAcao12 = token;
        } else if (contexto == CONTEXTO.ATRIBUICAO || contexto == CONTEXTO.ENTRADA_DADOS) {
            variavelIndexada = false;
            idArmazenadoAcao12 = token;
        }
    }

    /*
     * #13:
     * reconhecimento de identificador de variável e tamanho da variável indexada
     */
    public void acao13() {
        if (!executar) return;

        if (contexto == CONTEXTO.VARIAVEL) {
            if (!variavelIndexada) {
                vt++;
                vp++;
                tabelaDeSimbolos.put(idArmazenadoAcao12, new union(tipo, vt, null));
//                tabelaDeSimbolos.put(idArmazenadoAcao12, new union(null, vt, null));
            } else {
                vit += constIntArmazenadaAcao14;
//                tabelaDeSimbolos.put(idArmazenadoAcao12, new union(null, vt + 1, constIntArmazenadaAcao14));
                tabelaDeSimbolos.put(idArmazenadoAcao12, new union(tipo, vt + 1, constIntArmazenadaAcao14));
                vt += constIntArmazenadaAcao14;
            }

        } else if (contexto == CONTEXTO.ATRIBUICAO) {
            if (tabelaDeSimbolos.containsKey(idArmazenadoAcao12) && isIdentificadorDeVariavel(idArmazenadoAcao12)) {
                Integer atr1 = tabelaDeSimbolos.get(idArmazenadoAcao12).atributo1;
                Integer atr2 = tabelaDeSimbolos.get(idArmazenadoAcao12).atributo2;

                if (atr2 == null) {
                    if (!variavelIndexada) {
                        listaDeAtributos.add(atr1);
                    } else {
                        erros.add(ERRO2 + idArmazenadoAcao12);
                        return;
                    }
                } else {
                    if (variavelIndexada) {
                        listaDeAtributos.add(atr1 + constIntArmazenadaAcao14 - 1);
                    } else {
                        erros.add(ERRO3 + idArmazenadoAcao12);
                        return;
                    }
                }
            } else {
                erros.add(ERRO4 + idArmazenadoAcao12);
                return;
            }

        } else if (contexto == CONTEXTO.ENTRADA_DADOS) {
            if (tabelaDeSimbolos.containsKey(idArmazenadoAcao12) && isIdentificadorDeVariavel(idArmazenadoAcao12)) {
                Integer atr1 = tabelaDeSimbolos.get(idArmazenadoAcao12).atributo1;
                Integer atr2 = tabelaDeSimbolos.get(idArmazenadoAcao12).atributo2;
                Integer cat = tabelaDeSimbolos.get(idArmazenadoAcao12).categoria;

                if (atr2 == null) {
                    if (!variavelIndexada) {
                        areaDeInstrucoes.add(new Instrucao(ponteiro, "REA", new Item(cat)));
                        ponteiro++;
                        areaDeInstrucoes.add(new Instrucao(ponteiro, "STR", new Item(atr1)));
                        ponteiro++;
                    } else {
                        erros.add(ERRO2 + idArmazenadoAcao12);
                        return;
                    }
                } else {
                    if (variavelIndexada) {
                        areaDeInstrucoes.add(new Instrucao(ponteiro, "REA", new Item(cat)));
                        ponteiro++;
                        areaDeInstrucoes.add(new Instrucao(ponteiro, "STR", new Item(atr1 + constIntArmazenadaAcao14 - 1)));
                        ponteiro++;
                    } else {
                        erros.add(ERRO3 + idArmazenadoAcao12);
                        return;
                    }
                }
            } else {
                erros.add(ERRO4 + idArmazenadoAcao12);
                return;
            }
        }
    }

    /*
     * #14:
     * reconhecimento de constante inteira como tamanho da variável indexada ou como índice
     */
    public void acao14(String token) {
        if (!executar) return;

        try {
            constIntArmazenadaAcao14 = Integer.valueOf(token);
            variavelIndexada = true;
        } catch (NumberFormatException e) {
            erros.add(ERRO12 + e.getLocalizedMessage());
        }
    }

    /*
     * #15:
     * reconhecimento do início do comando de atribuição
     */
    public void acao15() {
        if (!executar) return;

        contexto = contexto.ATRIBUICAO;
    }

    /*
     * #16:
     * reconhecimento do fim do comando de atribuição
     */
    public void acao16() {
        if (!executar) return;

        listaDeAtributos.stream().forEach(i -> {
            areaDeInstrucoes.add(new Instrucao(ponteiro, "STR", new Item(i)));
            ponteiro++;
        });

        listaDeAtributos.clear();
    }

    /*
     * #17:
     * reconhecimento do comando de entrada de dados
     */
    public void acao17() {
        if (!executar) return;

        contexto = CONTEXTO.ENTRADA_DADOS;
    }

    /*
     * #18:
     * reconhecimento de mensagem em comando de saída de dados
     */
    public void acao18() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "WRT", new Item(0)));
        ponteiro++;
    }

    /*
     * #19:
     * reconhecimento de identificador em comando de saída ou em expressão
     */
    public void acao19(String token) {
        if (!executar) return;

        if (tabelaDeSimbolos.containsKey(token) && isIdentificadorDeConstanteOuVariavel(token)) {
            variavelIndexada = false;
            idArmazenadoAcao19 = token;
        } else {
            erros.add(ERRO6 + token);
        }
    }


    /*
     * #20:
     * reconhecimento de índice de variável indexada em comando de saída
     */
    public void acao20() {
        if (!executar) return;

        Integer atr1 = tabelaDeSimbolos.get(idArmazenadoAcao19).atributo1;
        Integer atr2 = tabelaDeSimbolos.get(idArmazenadoAcao19).atributo2;

        if (!variavelIndexada) {
            if (atr2 == null) {
                areaDeInstrucoes.add(new Instrucao(ponteiro, "LDV", new Item(atr1)));
                ponteiro++;
            } else {
                erros.add(ERRO3 + idArmazenadoAcao19);
            }
        } else {
            if (atr2 != null) {
                areaDeInstrucoes.add(new Instrucao(ponteiro, "LDV", new Item(atr1 + constIntArmazenadaAcao14 - 1)));
                ponteiro++;
            } else {
                erros.add(ERRO7 + idArmazenadoAcao19);
            }
        }
    }

    /*
     * #21:
     * reconhecimento de constante inteira em comando de saída ou em experssão
     */
    public void acao21(String token) {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "LDI", new Item(Integer.parseInt(token))));
        ponteiro++;
    }

    /*
     * #22:
     * reconhecimento de constante real em comando de saída ou em expressão
     */
    public void acao22(String token) {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "LDR", new Item(Float.parseFloat(token))));
        ponteiro++;
    }

    /*
     * #23:
     * reconhecimento de constante literal em comando de saída ou em expressão
     */
    public void acao23(String token) {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "LDS", new Item((token))));
        ponteiro++;
    }

    /*
     * #24:
     * reconhecimento de fim de comando de seleção
     */
    public void acao24() {
        if (!executar) return;

        Integer enderecoInstrucaoDesvioAcao25_26_27 = pilhaDeDesvios.pop();
        areaDeInstrucoes
                .stream()
                .filter(i -> i.getPointer() == enderecoInstrucaoDesvioAcao25_26_27)
                .findFirst()
                .ifPresent(i -> i.setParameter(new Item(ponteiro)));
    }

    /*
     * #25:
     * reconhecimento da palavra reservada true
     */
    public void acao25() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "JMF", new Item("?")));
        ponteiro++;
        pilhaDeDesvios.push(ponteiro - 1);
    }

    /*
     * #26:
     * reconhecimento da palavra reservada false
     */
    public void acao26() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "JMT", new Item("?")));
        ponteiro++;
        pilhaDeDesvios.push(ponteiro - 1);
    }

    /*
     * #27:
     * reconhecimento da palavra reservada false (ou true)
     */
    public void acao27() {
        if (!executar) return;
        Integer enderecoInstrucaoDesvioAcao25_26 = pilhaDeDesvios.pop();

        areaDeInstrucoes
                .stream()
                .filter(i -> i.getPointer() == enderecoInstrucaoDesvioAcao25_26)
                .findFirst()
                .ifPresent(i -> i.setParameter(new Item(ponteiro + 1)));

        areaDeInstrucoes.add(new Instrucao(ponteiro, "JMP", new Item("?")));
        ponteiro++;

        pilhaDeDesvios.push(ponteiro - 1);
    }

    /*
     * #28:
     * reconhecimento de comando de repetição
     */
    public void acao28() {
        if (!executar) return;

        enderecoInstrucaoDesvioAcao28 = ponteiro;

        pilhaDeDesvios.push(ponteiro);
    }

    /*
     * #29:
     * reconhecimento do fim do comando de repetição
     */
    public void acao29() {
        if (!executar) return;

//        Integer enderecoInstrucaoDesvioAcao28 = pilhaDeDesvios.pop();
        pilhaDeDesvios.remove(enderecoInstrucaoDesvioAcao28);

        areaDeInstrucoes.add(new Instrucao(ponteiro, "JMT", new Item(enderecoInstrucaoDesvioAcao28)));
        ponteiro++;
    }

    /*
     * #30:
     * reconhecimento do inicio de expressão em comando de repetição
     */
    public void acao30() {
        if (!executar) return;

        pilhaDeDesvios.push(ponteiro);
    }

    /*
     * #31:
     * reconhecimento de expressão em comando de repetição
     */
    public void acao31() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "JMF", new Item("?")));
        ponteiro++;
        pilhaDeDesvios.push(ponteiro - 1);
    }

    /*
     * #32:
     * reconhecimento do fim do comando de repetição
     */
    public void acao32() {
        if (!executar) return;

        Integer enderecoInstrucaoDesvioAcao31 = pilhaDeDesvios.pop();

        areaDeInstrucoes
                .stream()
                .filter(i -> i.getPointer() == enderecoInstrucaoDesvioAcao31)
                .findFirst()
                .ifPresent(i -> i.setParameter(new Item(ponteiro + 1)));

        Integer enderecoInstrucaoDesvioAcao30 = pilhaDeDesvios.pop();

        areaDeInstrucoes.add(new Instrucao(ponteiro, "JMP", new Item(enderecoInstrucaoDesvioAcao30)));
        ponteiro++;
    }

    /*
     * #33:
     * reconhecimento de operação relacional igual
     */
    public void acao33() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "EQL", new Item(0)));
        ponteiro++;
    }

    /*
     * #34:
     * reconhecimento de operação relacional diferente
     */
    public void acao34() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "DIF", new Item(0)));
        ponteiro++;
    }

    /*
     * #35:
     * reconhecimento de operação relacional menor
     */
    public void acao35() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "SMR", new Item(0)));
        ponteiro++;
    }

    /*
     * #36:
     * reconhecimento de operação relacional maior
     */
    public void acao36() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "BGR", new Item(0)));
        ponteiro++;
    }

    /*
     * #37:
     * reconhecimento de operação relacional menor igual
     */
    public void acao37() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "SME", new Item(0)));
        ponteiro++;
    }

    /*
     * #38:
     * reconhecimento de operação relacional maior igual
     */
    public void acao38() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "BGE", new Item(0)));
        ponteiro++;
    }

    /*
     * #39:
     * reconhecimento de operação aritmetica adição
     */
    public void acao39() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "ADD", new Item(0)));
        ponteiro++;
    }

    /*
     * #40:
     * reconhecimento de operação aritmetica subtração
     */
    public void acao40() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "SUB", new Item(0)));
        ponteiro++;
    }

    /*
     * #41:
     * reconhecimento de operação lógica OU ( | )
     */
    public void acao41() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "OR", new Item(0)));
        ponteiro++;
    }

    /*
     * #42:
     * reconhecimento de operação aritmética multiplicação
     */
    public void acao42() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "MUL", new Item(0)));
        ponteiro++;
    }

    /*
     * #43:
     * reconhecimento de operação aritmética divisão real
     */
    public void acao43() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "DIV", new Item(0)));
        ponteiro++;
    }

    /*
     * #44:
     * reconhecimento de operação aritmética divisão inteira
     */
    public void acao44() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "DIV", new Item(0)));
        ponteiro++;
    }

    /*
     * #45:
     * reconhecimento de operação aritmética resto da divisão inteira
     */
    public void acao45() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "MOD", new Item(0)));
        ponteiro++;
    }

    /*
     * #46:
     * reconhecimento de operação lógica E (&)
     */
    public void acao46() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "AND", new Item(0)));
        ponteiro++;
    }

    /*
     * #47:
     * reconhecimento de operação aritmética potenciação
     */
    public void acao47() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "POW", new Item(0)));
        ponteiro++;
    }

    /*
     * #48:
     * reconhecimento de constante lógica true
     */
    public void acao48() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "LDB", new Item(true)));
        ponteiro++;
    }

    /*
     * #49:
     * reconhecimento de constante lógica false
     */
    public void acao49() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "LDB", new Item(false)));
        ponteiro++;
    }

    /*
     * #50:
     * reconhecimento de operação lógica NÃO ( ! )
     */
    public void acao50() {
        if (!executar) return;

        areaDeInstrucoes.add(new Instrucao(ponteiro, "NOT", new Item(0)));
        ponteiro++;
    }

    private Boolean identificadorJaDeclarado(String token) {
        if (tabelaDeSimbolos.containsKey(token) ||
                tabelaDeTiposEnumerados.containsKey(token) ||
                tabelaDeTiposEnumerados
                        .entrySet()
                        .stream()
                        .filter(t -> t.getValue().contains(token))
                        .findFirst()
                        .isPresent()) {
            return true;
        }
        return false;
    }

    private Boolean isIdentificadorDeVariavel(String token) {
        return Stream.of(1, 2, 3, 4)
                .filter(n -> n.compareTo(tabelaDeSimbolos.get(token).categoria) == 0)
                .findFirst()
                .isPresent();
    }

    private Boolean isIdentificadorDeConstante(String token) {
        return Stream.of(5, 6, 7)
                .filter(n -> n.compareTo(tabelaDeSimbolos.get(token).categoria) == 0)
                .findFirst()
                .isPresent();
    }

    private Boolean isIdentificadorDeConstanteOuVariavel(String token) {
        return isIdentificadorDeVariavel(token) || isIdentificadorDeConstante(token);
    }

    @Override
    public String toString() {
        String resultado = "";

        for (Instrucao instrucao : areaDeInstrucoes) {
            resultado += instrucao.toString() + "\n";
        }

        return resultado;
    }

    public String getListaDeErrosAsString() {
        if (erros.isEmpty()) return "Não há erros.";

        String conteudo = "";
        for (String e : erros) {
            conteudo += "  " + e + "\n";
        }
        return conteudo;
    }
}

class union {
    public Integer categoria;
    public Integer atributo1;
    public Integer atributo2;

    public union(Integer categoria, Integer atributo1, Integer atributo2) {
        this.categoria = categoria;
        this.atributo1 = atributo1;
        this.atributo2 = atributo2;
    }
}