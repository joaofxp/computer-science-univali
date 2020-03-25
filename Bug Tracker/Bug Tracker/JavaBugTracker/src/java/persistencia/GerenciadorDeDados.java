package persistencia;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Bug;

public class GerenciadorDeDados {

    public List<Bug> getBugs(String filtro) throws SQLException {

        List<Bug> bugs = new ArrayList<>();

        //criando alguns bugs diretamente na memória apenas para teste
        Bug umBug = new Bug(0, "Um bug de teste criado na memória", false);
        Bug outroBug = new Bug(1, "Um outro bug de teste criado na memória", true);
        
        bugs.add(umBug);
        bugs.add(outroBug);
        
        return bugs;//retorna a lista de bugs
    }

    public void cadastraNovoBug(String titulo, String descricao) throws SQLException {

    }

    public void alterarStatusDoBug(int idDoBug, boolean resolvido) throws SQLException {

    }

    public List<Bug> getBugsResolvidos() throws SQLException {
        String filtro = " WHERE bugs.status=true";
        return getBugs(filtro);
    }

    public List<Bug> getBugsNaoResolvidos() throws SQLException {
        String filtro = " WHERE bugs.status=false";
        return getBugs(filtro);
    }

    /**
     * *
     * Este é um metodo de conveniência que apenas chama o método getBugs(String
     * filtro) sem passar nenhum filtro. Este método vai retornar todos os bugs
     * cadastrados.
     */
    public List<Bug> getBugs() throws SQLException {
        return getBugs(null);
    }

}
