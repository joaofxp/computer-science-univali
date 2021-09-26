package compilador.semantico;

public class Item {
    private Object obj;
    private int intValue;
    private float realValue;
    private String charValue;
    private boolean boolValue;
    private int type;

    public Item(Object obj) {
        this.intValue = 0;
        this.realValue = (float) 0.0;
        this.charValue = "";
        this.boolValue = false;
        this.obj = obj;

        if (obj instanceof Integer) {
            this.intValue = (int) obj;
            type = TipoDeDado.TIPO_NATURAL;
        } else if (obj instanceof Float) {
            this.realValue = (float) obj;
            type = TipoDeDado.TIPO_REAL;
        } else if (obj instanceof String) {
            this.charValue = (String) obj;
            type = TipoDeDado.TIPO_LITERAL;
        } else if (obj instanceof Boolean) {
            type = TipoDeDado.TIPO_BOOLEANO;
            this.boolValue = (boolean) obj;
        }
    }

    public Object getObj() {
        switch (this.type) {
            case TipoDeDado.TIPO_NATURAL:
                return intValue;
            case TipoDeDado.TIPO_REAL:
                return realValue;
            case TipoDeDado.TIPO_BOOLEANO:
                return boolValue;
            default:
                return charValue;
        }
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return String.valueOf(this.getObj());
    }

    static class TipoDeDado {
        public static final int TIPO_NATURAL = 1;
        public static final int TIPO_REAL = 2;
        public static final int TIPO_LITERAL = 3;
        public static final int TIPO_BOOLEANO = 4;
    }
}