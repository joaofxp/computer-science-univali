package compilador.maquinaVirtual;

import compilador.semantico.Instrucao;
import compilador.semantico.Item;

import java.util.*;

public class MaquinaVirtual {
    private int ponteiro;
    private Pilha pilha = new Pilha();
    private List<Instrucao> instrucoes = new ArrayList<>();
    private List<String> mensagensDaMaquinaVirtual = new ArrayList<String>();

    public MaquinaVirtual(List<Instrucao> inst) {
        this.ponteiro = 1;
        this.instrucoes = inst;
    }

    //rodar a maquina virtual
    public List<String> iniciarMaquinaVirtual() {
//        System.out.println(this.instrucoes.size());
//        System.out.println(this.ponteiro);
//
//        System.out.println(this.instrucoes.get(this.ponteiro - 1));
//        System.out.println(this.instrucoes.get(this.instrucoes.size() - 1).getPointer());

        while (this.ponteiro < this.instrucoes.size()) {
//            System.out.println(this.instrucoes.get(this.ponteiro - 1).getCode());
            executeInstruction(this.instrucoes.get(this.ponteiro - 1));
        }


//        for (Instrucao instruction : instrucoes) {

//        while (ponteiro < instrucoes.get(instrucoes.size() - 1).getPointer()) {
//            Instrucao instruction = instrucoes.get(ponteiro - 1);
//            System.out.println(ponteiro);
//
//            if (instruction.getCode().equalsIgnoreCase("STP") && instruction.getPointer() == ponteiro) {
//                System.out.println("stopou o ponteiro em -> " + ponteiro);
//                STP();
//                break;
//            }
//
//            if (ponteiro > instruction.getPointer()) {
//                //nao faz nada, pois aconteceu uma operacao de jump,jmf,jmt.
//            } else {
////                System.out.println("instrução -> " + instruction.getCode() + " ponteiro -> " + ponteiro + " e ponteiro da instrução -> " + instruction.getPointer());
//                executeInstruction(instruction);
//            }
//
////            executeInstruction(instruction);
//        }

        STP();
        return mensagensDaMaquinaVirtual;
    }

    //executar uma instrução
    private void executeInstruction(Instrucao instrucao) {
        String action = instrucao.getCode();

        switch (action) {
            case "ADD":
                ADD();
                break;
            case "ALB":
                ALB((int) instrucao.getParameter().getObj());
                break;
            case "ALI":
                ALI((int) instrucao.getParameter().getObj());
                break;
            case "ALR":
                ALR((int) instrucao.getParameter().getObj());
                break;
            case "ALS":
                ALS((int) instrucao.getParameter().getObj());
                break;
            case "AND":
                AND();
                break;
            case "BGE":
                BGE();
                break;
            case "BGR":
                BGR();
                break;
            case "DIF":
                DIF();
                break;
            case "DIV":
                DIV();
                break;
            case "EQL":
                EQL();
                break;
            case "JMF":
                JMF((int) instrucao.getParameter().getObj());
                break;
            case "JMP":
                JMP((int) instrucao.getParameter().getObj());
                break;
            case "JMT":
                JMT((int) instrucao.getParameter().getObj());
                break;
            case "LDB":
                LDB((boolean) instrucao.getParameter().getObj());
                break;
            case "LDI":
                LDI((int) instrucao.getParameter().getObj());
                break;
            case "LDR":
                LDR((float) instrucao.getParameter().getObj());
                break;
            case "LDS":
                LDS((String) instrucao.getParameter().getObj());
                break;
            case "LDV":
                LDV((int) instrucao.getParameter().getObj());
                break;
            case "MOD":
                MOD();
                break;
            case "MUL":
                MUL();
                break;
            case "NOT":
                NOT();
                break;
            case "OR":
                OR();
                break;
            case "POW":
                POW();
                break;
            case "REA":
                REA((int) instrucao.getParameter().getObj());
                break;
            case "SME":
                SME();
                break;
            case "SMR":
                SMR();
                break;
            case "STC":
                STC((int) instrucao.getParameter().getObj());
                break;
            case "STP":
                STP();
                break;
            case "STR":
                STR((int) instrucao.getParameter().getObj());
                break;
            case "SUB":
                SUB();
                break;
            case "WRT":
                WRT();
                break;
            default:
                System.out.println("Comando invalido.");
                break;
        }
    }

    //limpar a pilha
    public void clearStack() {
        this.pilha.limpar();
    }

    //Resto de uma divisão
    public void MOD() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();
        int tipoDeDado = pilha.verificacaoDeTipos(item1, item2);

        if (tipoDeDado != TipoDeDado.TIPO_LITERAL && tipoDeDado != TipoDeDado.TIPO_BOOLEANO) {
            if (tipoDeDado == TipoDeDado.TIPO_NATURAL) {
                int inteiro = (int) item2.getObj() % (int) item1.getObj();
                pilha.push(inteiro);

            } else {
                float real = (float) item2.getObj() % (float) item1.getObj();
                pilha.push(real);
            }

            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer uma operação de MOD com literal ou booleano");
        }
    }

    //Potenciação
    public void POW() {
        Item base = pilha.pop();
        Item exp = pilha.pop();

        if (base.getType() == TipoDeDado.TIPO_NATURAL || exp.getType() == TipoDeDado.TIPO_REAL) {
            if (exp.getType() == TipoDeDado.TIPO_NATURAL) {
                double novo = 0.0;

                if (base.getType() == TipoDeDado.TIPO_NATURAL && exp.getType() == TipoDeDado.TIPO_NATURAL) {
                    int baseAux = (int) base.getObj();
                    int expAux = (int) exp.getObj();
                    novo = Math.pow((double) baseAux, (double) expAux);
                } else {
                    novo = Math.pow((double) base.getObj(), (double) exp.getObj());
                }
                pilha.push((float) novo);
            } else {
                mensagensDaMaquinaVirtual.add("Tipo de dado incorreto no expoente da função de Potenciação (POW)");
            }
        } else {
            mensagensDaMaquinaVirtual.add("Tipo de dado incorreto na base da função de Potenciação (POW)");
        }
    }

    //executar operação aritmética soma
    public void ADD() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();
        int tipoDeDado = pilha.verificacaoDeTipos(item1, item2);

        if (tipoDeDado != TipoDeDado.TIPO_LITERAL && tipoDeDado != TipoDeDado.TIPO_BOOLEANO) {
            if (tipoDeDado == TipoDeDado.TIPO_NATURAL) {
                int inteiro = (int) item2.getObj() + (int) item1.getObj();
                pilha.push(inteiro);

            } else {
                try {
//                    if (item1.getType() == TipoDeDado.TIPO_NATURAL || item2.getType() == TipoDeDado.TIPO_NATURAL) {
//                        throw new ClassCastException("Erro tipo de dado");
//                    }

                    float real = Float.parseFloat(item2.getObj().toString()) + Float.parseFloat(item1.getObj().toString());
                    pilha.push(real);
                } catch (ClassCastException e) {
                    mensagensDaMaquinaVirtual.add("Erro ao tentar somar uma variavel NATURAL com valor inteiro + real, operação inválida.");
                }
            }

            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao realizar uma soma, tipo de dado inválido (use apenas naturais ou reais).");
        }
    }

    //executar operação aritmética divisão
    public void DIV() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();

        int tipoDeDado = pilha.verificacaoDeTipos(item1, item2);

        if (tipoDeDado != TipoDeDado.TIPO_LITERAL && tipoDeDado != TipoDeDado.TIPO_BOOLEANO) {
            if (tipoDeDado == TipoDeDado.TIPO_NATURAL) {
                int divisor = (int) item2.getObj();
                int dividendo = (int) item1.getObj();

                if (dividendo == 0) {
                    mensagensDaMaquinaVirtual.add("Erro ao tentar fazer uma operação de divisão com dividendo 0, operação inválida.");
                    return;
                }

                float result = (float) divisor / dividendo;
                pilha.push(result);

            } else {
                float divisor = Float.parseFloat(item2.getObj().toString());
                float dividendo = Float.parseFloat(item1.getObj().toString());

                if (dividendo == 0.0) {
                    mensagensDaMaquinaVirtual.add("Erro ao tentar fazer uma operação de divisão com dividendo 0, operação inválida.");
                    return;
                }

                float real = divisor / dividendo;

                pilha.push(real);
            }

            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer uma operação de divisão com literal ou booleano");
        }
    }

    //executar operação aritmética multiplicação
    public void MUL() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();
        int tipoDeDado = pilha.verificacaoDeTipos(item1, item2);

        if (tipoDeDado != TipoDeDado.TIPO_LITERAL && tipoDeDado != TipoDeDado.TIPO_BOOLEANO) {

            if (tipoDeDado == TipoDeDado.TIPO_NATURAL) {
                int inteiro = (int) item1.getObj() * (int) item2.getObj();
                pilha.push(inteiro);

            } else {
                float real = (float) item1.getObj() * (float) item2.getObj();
                pilha.push(real);
            }

            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer uma multiplicação com literal ou booleano");
        }
    }

    //executar operação aritmética subtração
    public void SUB() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();
        int tipoDeDado = pilha.verificacaoDeTipos(item1, item2);

        if (tipoDeDado != TipoDeDado.TIPO_LITERAL && tipoDeDado != TipoDeDado.TIPO_BOOLEANO) {

            if (tipoDeDado == TipoDeDado.TIPO_NATURAL) {
                int inteiro = (int) item2.getObj() - (int) item1.getObj();
                pilha.push(inteiro);

            } else {
                float real = (float) item2.getObj() - (float) item1.getObj();
                pilha.push(real);
            }

            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer subtração com literal ou booleano");
        }
    }

    //alocar espaço na pilha de dados, para variáveis do tipo lógico, igual ao deslocamento passado como parâmetro
    public void ALB(int deslocamento) {
        for (int i = 0; i < deslocamento; i++) {
            pilha.push(false);
        }

        ponteiro++;
    }

    //alocar espaço na pilha de dados, para variáveis do tipo inteiro, igual ao deslocamento passado como parâmetro
    public void ALI(int deslocamento) {
        for (int i = 0; i < deslocamento; i++) {
            pilha.push(0);
        }

        ponteiro++;
    }

    //alocar espaço na pilha de dados, para variáveis do tipo real, igual ao deslocamento passado como parâmetro
    public void ALR(int deslocamento) {
        for (int i = 0; i < deslocamento; i++) {
            pilha.push(0.0f);
        }

        ponteiro++;
    }

    //alocar espaço na pilha de dados, para variáveis do tipo literal, igual ao deslocamento passado como parâmetro
    public void ALS(int deslocamento) {
        for (int i = 0; i < deslocamento; i++) {
            pilha.push("");
        }

        ponteiro++;
    }

    //carregar na pilha de dados a constante lógica passada como parâmetro
    public void LDB(boolean constante) {
        pilha.push(constante);
        ponteiro++;
    }

    //carregar na pilha de dados a constante inteira passada como parâmetro
    public void LDI(int constante) {
        pilha.push(constante);
        ponteiro++;
    }

    //carregar na pilha de dados a constante real passada como parâmetro
    public void LDR(float constante) {
        pilha.push(constante);
        ponteiro++;
    }

    //carregar na pilha de dados a constante literal passada como parâmetro
    public void LDS(String constante) {
        pilha.push(constante);
        ponteiro++;
    }

    //carregar na pilha de dados o valor armazenado no endereço passado como parâmetro
    public void LDV(int endereco) {
//        System.out.println("GET -> " + endereco + " e pilha tamanho -> " + pilha.tamanho());
        Item aux = pilha.getObjetoPorEndereco(endereco - 1);
        pilha.push(aux.getObj());
        ponteiro++;
    }

    //armazenar conteúdo do topo da pilha de dados no endereço passado como parâmetro
    public void STR(int endereco) {
        Item item = pilha.getUltimoElemento();
        Item enderecoParaAlocar = pilha.getObjetoPorEndereco(endereco - 1);

        if ((enderecoParaAlocar.getType() == TipoDeDado.TIPO_LITERAL && item.getType() != TipoDeDado.TIPO_LITERAL)) {
            mensagensDaMaquinaVirtual.add("Erro ao tentar atribuir um valor não-literal para uma variavel literal.");
            return;
        } else if ((enderecoParaAlocar.getType() == TipoDeDado.TIPO_BOOLEANO && item.getType() != TipoDeDado.TIPO_BOOLEANO)) {
            mensagensDaMaquinaVirtual.add("Erro ao tentar atribuir um valor não-booleano para uma variavel booleana.");
            return;
        }

        pilha.set(endereco - 1, item);
        ponteiro++;
    }

    //executar operação lógica E
    public void AND() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();
        boolean result = (boolean) item2.getObj() && (boolean) item1.getObj();

        pilha.push(result);
        ponteiro++;
    }

    //executar operação lógica NÃO
    public void NOT() {
        Item item1 = pilha.pop();

        if (item1.getType() == TipoDeDado.TIPO_BOOLEANO) {
            boolean result = (boolean) item1.getObj();
            pilha.push(!result);
            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer operação lógica com um dado não-booleano");
        }
    }

    //executar operação lógica OU
    public void OR() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();
        boolean result = (boolean) item2.getObj() || (boolean) item1.getObj();

        pilha.push(result);
        ponteiro++;
    }

    //executar operação relacional maior ou igual
    public void BGE() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();

        if ((item1.getType() == TipoDeDado.TIPO_NATURAL || item1.getType() == TipoDeDado.TIPO_REAL) &&
                ((item2.getType() == TipoDeDado.TIPO_NATURAL || item2.getType() == TipoDeDado.TIPO_REAL))) {

            float valor1 = (float) 0.0;
            float valor2 = (float) 0.0;

            if (item1.getType() == TipoDeDado.TIPO_NATURAL) {
                valor1 = (float) ((int) item1.getObj());
            } else {
                valor1 = (float) item1.getObj();
            }

            if (item2.getType() == TipoDeDado.TIPO_NATURAL) {
                valor2 = (float) ((int) item2.getObj());
            } else {
                valor2 = (float) item2.getObj();
            }

            pilha.push((valor2 >= valor1));
            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer uma operação relacional com um dado booleano ou literal");
        }
    }

    //executar operação relacional maior que
    public void BGR() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();

        if ((item1.getType() == TipoDeDado.TIPO_NATURAL || item1.getType() == TipoDeDado.TIPO_REAL) &&
                ((item2.getType() == TipoDeDado.TIPO_NATURAL || item2.getType() == TipoDeDado.TIPO_REAL))) {


            float valor1 = (float) 0.0;
            float valor2 = (float) 0.0;

            if (item1.getType() == TipoDeDado.TIPO_NATURAL) {
                valor1 = (float) ((int) item1.getObj());
            } else {
                valor1 = (float) item1.getObj();
            }

            if (item2.getType() == TipoDeDado.TIPO_NATURAL) {
                valor2 = (float) ((int) item2.getObj());
            } else {
                valor2 = (float) item2.getObj();
            }

            pilha.push((valor2 > valor1));
            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer operação de BGR com um dado booleano ou literal");
        }
    }

    //executar operação relacional diferente
    public void DIF() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();

        if ((item1.getType() == TipoDeDado.TIPO_NATURAL || item1.getType() == TipoDeDado.TIPO_REAL) &&
                ((item2.getType() == TipoDeDado.TIPO_NATURAL || item2.getType() == TipoDeDado.TIPO_REAL))) {

            float valor1 = (float) 0.0;
            float valor2 = (float) 0.0;

            if (item1.getType() == TipoDeDado.TIPO_NATURAL) {
                valor1 = (float) ((int) item1.getObj());
            } else {
                valor1 = (float) item1.getObj();
            }

            if (item2.getType() == TipoDeDado.TIPO_NATURAL) {
                valor2 = (float) ((int) item2.getObj());
            } else {
                valor2 = (float) item2.getObj();
            }

            pilha.push((valor2 != valor1));
            ponteiro++;
        } else {
            if ((item1.getType() == TipoDeDado.TIPO_LITERAL) && (item2.getType() == TipoDeDado.TIPO_LITERAL)) {
                String aux1 = (String) item1.getObj();
                String aux2 = (String) item2.getObj();

                if (aux1.equals(aux2)) {
                    pilha.push(false);
                } else {
                    pilha.push(true);
                }
            } else {
                pilha.push(true);
            }
        }
    }

    //executar operação relacional igual
    public void EQL() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();

        if (item1.getType() == TipoDeDado.TIPO_NATURAL && item2.getType() == TipoDeDado.TIPO_NATURAL) {

            float valor1 = (float) 0.0;
            float valor2 = (float) 0.0;

            if (item1.getType() == TipoDeDado.TIPO_NATURAL) {
                valor1 = (float) ((int) item1.getObj());
            } else {
                valor1 = (float) item1.getObj();
            }

            if (item2.getType() == TipoDeDado.TIPO_NATURAL) {
                valor2 = (float) ((int) item2.getObj());
            } else {
                valor2 = (float) item2.getObj();
            }
            pilha.push((valor2 == valor1));
            ponteiro++;

        } else if (item1.getType() == TipoDeDado.TIPO_REAL && item2.getType() == TipoDeDado.TIPO_REAL) {

            float valor1 = (float) item1.getObj();
            float valor2 = (float) item2.getObj();


            pilha.push((valor2 == valor1));
        } else {
            if ((item1.getType() == TipoDeDado.TIPO_LITERAL) && (item2.getType() == TipoDeDado.TIPO_LITERAL)) {
                String aux1 = (String) item1.getObj();
                String aux2 = (String) item2.getObj();

                if (aux1.equals(aux2)) {
                    pilha.push(true);
                } else {
                    pilha.push(false);
                }
            } else {
                pilha.push(false);
            }
        }
    }

    //executar operação relacional menor ou igual
    public void SME() {
        Item item1 = pilha.pop();
        Item item2 = pilha.pop();

        if ((item1.getType() == TipoDeDado.TIPO_NATURAL || item1.getType() == TipoDeDado.TIPO_REAL) &&
                ((item2.getType() == TipoDeDado.TIPO_NATURAL || item2.getType() == TipoDeDado.TIPO_REAL))) {

            float valor1 = (float) 0.0;
            float valor2 = (float) 0.0;

            if (item1.getType() == TipoDeDado.TIPO_NATURAL) {
                valor1 = (float) ((int) item1.getObj());
            } else {
                valor1 = (float) item1.getObj();
            }

            if (item2.getType() == TipoDeDado.TIPO_NATURAL) {
                valor2 = (float) ((int) item2.getObj());
            } else {
                valor2 = (float) item2.getObj();
            }
            pilha.push((valor2 <= valor1));
            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer operação SME com um dado booleano ou literal");
        }
    }

    //executar operação relacional menor que
    public void SMR() {
//        System.out.println(pilha.getUltimoElemento());
        Item item1 = pilha.pop();
//        System.out.println(pilha.getUltimoElemento());
        Item item2 = pilha.pop();

        if ((item1.getType() == TipoDeDado.TIPO_NATURAL || item1.getType() == TipoDeDado.TIPO_REAL) &&
                ((item2.getType() == TipoDeDado.TIPO_NATURAL || item2.getType() == TipoDeDado.TIPO_REAL))) {

            float valor1 = (float) 0.0;
            float valor2 = (float) 0.0;

            if (item1.getType() == TipoDeDado.TIPO_NATURAL) {
                valor1 = (float) ((int) item1.getObj());
            } else {
                valor1 = (float) item1.getObj();
            }

            if (item2.getType() == TipoDeDado.TIPO_NATURAL) {
                valor2 = (float) ((int) item2.getObj());
            } else {
                valor2 = (float) item2.getObj();
            }
            pilha.push((valor2 < valor1));

            ponteiro++;
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer operação SMR com um dado booleano ou literal");
        }
    }

    //desviar quando for falso para a instrução do endereço passado como parâmetro
    public void JMF(int endereco) {
        Item aux = pilha.pop();

        if (aux.getType() == TipoDeDado.TIPO_BOOLEANO) {
            boolean verificaTopo = (boolean) aux.getObj();

            if (verificaTopo == false) {
                ponteiro = endereco;
            } else {
                ponteiro++;
            }
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer uma operação JMF com o tipo de dado no topo da pilha diferente de booleano");
        }
    }

    //desviar para a instrução do endereço passado como parâmetro
    public void JMP(int endereco) {
        ponteiro = endereco;
    }

    //desviar quando for verdadeiro para a instrução do endereço passado como parâmetro
    public void JMT(int endereco) {
        Item aux = pilha.pop();

        if (aux.getType() == TipoDeDado.TIPO_BOOLEANO) {
            boolean verificaTopo = (boolean) aux.getObj();

            if (verificaTopo == true) {
//                System.out.println("TRUE, ponteiro recebe -> " + endereco);
                ponteiro = endereco;
            } else {
//                System.out.println("FALSE");
                ponteiro++;
            }
        } else {
            mensagensDaMaquinaVirtual.add("Erro ao tentar fazer uma operação JMT com o tipo de dado no topo da pilha diferente de booleano");
        }
    }

    //finalizar a execução
    public void STP() {
        mensagensDaMaquinaVirtual.add("Programa encerrado.");
    }

    // armazenar o conteúdo do topo da pilha de dados na últimas (deslocamento) constantes alocadas
    public void STC(int deslocamento) {
        int size = pilha.tamanho();
        Item item = pilha.getObjetoPorEndereco(size - 1);

        for (int i = pilha.tamanho() - deslocamento; i < pilha.tamanho() - 1; ++i) {
            pilha.set(i, item);
        }

        pilha.pop();
        ponteiro++;
    }

    //ler dados do tipo passado como parâmetro, sendo que 1 indica um dado do tipo inteiro, 2
    //indica um dado do tipo real, 3 indica um dado do tipo literal
    public void REA(int tipo) {
        Scanner sc = new Scanner(System.in);
        sc.useLocale(Locale.US);

        try {
            switch (tipo) {
                case 1:
                    System.out.println("Digite uma constante inteira:");
                    int auxInt = sc.nextInt();
                    pilha.push(auxInt);
                    ponteiro++;

                    break;
                case 2:
                    System.out.println("Digite uma constante real:");
                    float auxFloat = sc.nextFloat();
                    pilha.push(auxFloat);
                    ponteiro++;

                    break;
                case 3:
                    System.out.println("Digite uma constante literal:");
                    String auxString = sc.nextLine();

                    String stringToCharArray = auxString;
                    char[] charArray = stringToCharArray.toCharArray();

                    if (charArray.length > 0) {
                        if ((charArray[0] == '"' && charArray[charArray.length - 1] == '"') || (charArray[0] == '\'' && charArray[charArray.length - 1] == '\'')) {
                        } else {
                            throw new InputMismatchException(auxString);
                        }
                    } else {
                        throw new InputMismatchException(auxString);
                    }

                    pilha.push(auxString);
                    ponteiro++;
                    break;
            }


        } catch (InputMismatchException e) {
            System.out.println("Erro ao digitar um valor inválido durante comando de atribuição.");
            switch (tipo) {
                case 1:
                    System.out.println("Você precisa digitar uma constante inteira, ex: 1\n");
                    break;
                case 2:
                    System.out.println("Você precisa digitar uma constante real, ex: 2.0\n");
                    break;
                case 3:
                    System.out.println("Você precisa digitar literal, ex: 'teste' com apóstrofos ou aspas\n");
                    break;
            }
            REA(tipo);
        }
    }


    //escrever dados
    public void WRT() {
//        for (int i = 0; i < pilha.tamanho(); i++) {
//            Item itemPrint = pilha.getObjetoPorEndereco(i);
//            System.out.println(itemPrint);
//            System.out.println(itemPrint.getObj());
//            System.out.println(itemPrint.getType()+"\n");
//        }

        if(pilha.tamanho () == 0)
            return;

        Item aux = pilha.pop();

        switch (aux.getType()) {
            case TipoDeDado.TIPO_NATURAL:
                int intAux = (int) aux.getObj();
                mensagensDaMaquinaVirtual.add(intAux + "");
                ponteiro++;
                break;
            case TipoDeDado.TIPO_REAL:
                float auxFloat = (float) aux.getObj();
                mensagensDaMaquinaVirtual.add(auxFloat + "");
                ponteiro++;
                break;
            case TipoDeDado.TIPO_LITERAL:
                mensagensDaMaquinaVirtual.add((String) aux.getObj());
                ponteiro++;
                break;
            case TipoDeDado.TIPO_BOOLEANO:
                boolean auxBoolean = (boolean) aux.getObj();
                mensagensDaMaquinaVirtual.add(auxBoolean + "");
                ponteiro++;
                break;
            default:
                System.out.println("Tipo invalido para o comando WRT");
                break;
        }
    }

    static class TipoDeDado {
        public static final int TIPO_NATURAL = 1;
        public static final int TIPO_REAL = 2;
        public static final int TIPO_LITERAL = 3;
        public static final int TIPO_BOOLEANO = 4;
    }

}