package compilador.semantico;

public class Instrucao {
    private Integer pointer;
    private String code;
    private Item parameter;

    public Instrucao(Integer pointer, String code, Item parameter) {
        this.pointer = pointer;
        this.code = code;
        this.parameter = parameter;
    }

    public Integer getPointer() {
        return pointer;
    }

    public void setPointer(int Integer) {
        this.pointer = pointer;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Item getParameter() {
        return parameter;
    }

    public void setParameter(Item parameter) {
        this.parameter = parameter;
    }

    @Override
    public String toString() {
        return "| numero: " + pointer + ", codigo: '" + code + '\'' + ", parametro: " + parameter.toString() + " |";
    }
}
