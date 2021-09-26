package compilador.maquinaVirtual;

import compilador.semantico.Item;
import java.util.Stack;

public class Pilha {
    private Stack<Item> pilha = new Stack<>();

    //insere um novo objeto no topo da pilha
    public void push(Object object) {
        pilha.push(new Item(object));
    }

    public Item pop() {
        return this.pilha.pop();
    }

    public void set(int index, Item element) {
        this.pilha.set(index, element);
    }

    //pegar o ultimo elemento da pilha
    public Item getUltimoElemento() {
        return this.pilha.lastElement();
    }

    public Item getObjetoPorEndereco(int index) {
        return this.pilha.get(index);
    }

    //remove um novo objeto do indice passado
    public Item removerObjetoPorEndereco(int index) {
        return this.pilha.remove(index);
    }

    public boolean vazia() {
        return this.pilha.empty();
    }

    public void limpar() {
        this.pilha.clear();
    }

    public int tamanho() {
        return this.pilha.size();
    }

    //verificação de tipos em operações matemáticas
    public int verificacaoDeTipos(Item item1, Item item2) {
        int tipo1 = item1.getType();
        int tipo2 = item2.getType();

        //verifica se os objetos forem do mesmo tipo, retorna o primeiro tipo pois são iguais
        if (tipo1 == tipo2) {
            return tipo1;
        }
        //Verifica se um é do tipo real e outro do tipo natural, retornando real
        else if (((tipo1 == TipoDeDado.TIPO_NATURAL) && (tipo2 == TipoDeDado.TIPO_REAL))
                || ((tipo1 == TipoDeDado.TIPO_REAL) && (tipo2 == TipoDeDado.TIPO_NATURAL))) {
            return TipoDeDado.TIPO_REAL;
        }

        //Literal não pode ser usado
        return TipoDeDado.TIPO_LITERAL;
    }

    static class TipoDeDado {
        public static final int TIPO_NATURAL = 1;
        public static final int TIPO_REAL = 2;
        public static final int TIPO_LITERAL = 3;
        public static final int TIPO_BOOLEANO = 4;
    }
}
