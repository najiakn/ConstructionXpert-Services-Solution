package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import metier.projet;
import  java.util.Date;
public class projet_imp  implements  IprojetDao{
    private Connection connection;

    public projet_imp() {
        connection = SingletonConnection.getConnection();
    }

    @Override
    public projet ajouter(projet p) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO projet (nom_projet,description,date_debut,date_fin,budget)VALUES(?,?,?,?,?)");
            ps.setString(1, p.getNom_projet());
            ps.setString(2, p.getDescription_projet());
            ps.setDate(3, new java.sql.Date(p.getDate_debut().getTime()));
            ps.setDate(4,new java.sql.Date(p.getDate_fin().getTime()));
            ps.setFloat(5, p.getBudget());
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    @Override
    public List<projet> projetparMc(String mc) {
        return List.of();
    }

    @Override
    public List<projet> afficher() {
        List<projet> projets = new ArrayList<projet>();
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from projet");
            ResultSet rs =ps.executeQuery();

            while (rs.next()) {
                projet project = new projet();
                project.setId_projet(rs.getInt("id_projet"));
                project.setNom_projet(rs.getString("nom_projet"));
                project.setDescription_projet(rs.getString("description"));
                project.setDate_debut(rs.getDate("date_debut"));

                project.setDate_fin(rs.getDate("date_fin"));
                project.setBudget(rs.getFloat("budget"));

                projets.add(project);
            }

        } catch (SQLException e) {
            System.err.println("Error fetching projects: " + e.getMessage());
        }

        return projets;
    }

    @Override
    public projet modifier(projet p) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("update projet  set nom_projet=?,description=?,date_debut=?,date_fin=?,budget=? where id_projet=?");
            ps.setString(1, p.getNom_projet());
            ps.setString(2, p.getDescription_projet());
            ps.setDate(3, new java.sql.Date(p.getDate_debut().getTime()));
            ps.setDate(4,new java.sql.Date(p.getDate_fin().getTime()));
            ps.setFloat(5, p.getBudget());
            ps.setInt(6,p.getId_projet());
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    @Override
    public projet supprimer(int id_projet) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("delete from projet where id_projet =?");
            ps.setInt(1, id_projet);
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }


        return null;
    }

    @Override
    public projet getProjet(int id_projet) {
       projet p = null ;
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from projet where id_projet=?");
            ps.setInt(1,id_projet);
            ResultSet rs =ps.executeQuery();

            if (rs.next()) {
                p = new projet();
                p.setId_projet(rs.getInt("id_projet"));
                p.setNom_projet(rs.getString("nom_projet"));
                p.setDescription_projet(rs.getString("description"));
                p.setDate_debut(rs.getDate("date_debut"));

                p.setDate_fin(rs.getDate("date_fin"));
                p.setBudget(rs.getFloat("budget"));


            }

        } catch (SQLException e) {
            System.err.println("Error fetching projects: " + e.getMessage());
        }

        return p;
    }
}
