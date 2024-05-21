package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import metier.projet;

public class projet_imp  implements  IprojetDao{
    private Connection connection;

    public projet_imp() {
        connection = SingletonConnection.getConnection();
    }

    @Override
    public projet ajouter(projet p) {
        return null;
    }

    @Override
    public List<projet> projetparMc(String mc) {
        return List.of();
    }

    @Override
    public List<projet> afficher() {
        List<projet> projects = new ArrayList<>();
        String sql = "SELECT * FROM projet";

        try (Connection connection = SingletonConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                projet project = new projet();
                project.setId_projet(rs.getInt("id_projet"));
                project.setNom_projet(rs.getString("nom_projet"));
                project.setDescription_projet(rs.getString("description"));
                project.setDate_debut(rs.getDate("date_debut"));

                project.setDate_fin(rs.getDate("date_fin"));
              project.setBudget(rs.getFloat("budget"));

                projects.add(project);
            }

        } catch (SQLException e) {
            System.err.println("Error fetching projects: " + e.getMessage());
        }

        return projects;
    }

    @Override
    public projet modifier(projet p) {
        return null;
    }

    @Override
    public projet supprimer(int id) {
        return null;
    }
}
