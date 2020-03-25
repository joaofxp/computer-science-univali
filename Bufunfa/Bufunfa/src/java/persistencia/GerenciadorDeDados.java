package persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.*;

public class GerenciadorDeDados {

    private static final String usuario = "root";
    private static final String senha = "";
    private static final String url = "jdbc:mysql://localhost/bug_tracker";

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(url, usuario, senha);
    }
/*
    public List<Bug> getBugs(String filtro) throws Exception {

        List<Bug> bugs = new ArrayList<>();

        Connection con = getConnection();

        Statement st = con.createStatement();

        ResultSet rs = st.executeQuery("SELECT * FROM bugs" + filtro);

        while (rs.next()) {
            int id = rs.getInt("id");
            String titulo = rs.getString("titulo");
            boolean status = rs.getBoolean("status");

            bugs.add(new Bug(id, titulo, status));
        }

        return bugs;//retorna a lista de bugs
    }

    public void cadastraNovoBug(String titulo, String descricao) throws Exception {
        Connection con = getConnection();
        PreparedStatement st = con.prepareStatement("INSERT INTO bugs(titulo, descricao, status) VALUES(? , ?, false)");
        st.setString(1, titulo);
        st.setString(2, descricao);

        st.executeUpdate();
    }

    public void alterarStatusDoBug(int idDoBug, boolean resolvido) throws Exception {
        Connection con = getConnection();
        PreparedStatement st = con.prepareStatement("UPDATE bugs SET status = ? where bugs.id = ?");
        st.setBoolean(1, resolvido);
        st.setInt(2, idDoBug);

        st.executeUpdate();
    }

    public List<Bug> getBugsResolvidos() throws Exception {
        String filtro = " WHERE bugs.status=true";
        return getBugs(filtro);
    }

    public List<Bug> getBugsNaoResolvidos() throws Exception {
        String filtro = " WHERE bugs.status=false";
        return getBugs(filtro);
    }

    /**
     * *
     * Este é um metodo de conveniência que apenas chama o método getBugs(String
     * filtro) sem passar nenhum filtro. Este método vai retornar todos os bugs
     * cadastrados.
     */
    /*public List<Bug> getBugs() throws Exception {
        return getBugs("");
    }*/

}
