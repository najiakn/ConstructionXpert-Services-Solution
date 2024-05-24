package dao;

import metier.projet;
import metier.tache;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class tache_imp  implements itacheDao{
    private Connection connection;

    public tache_imp() {
        connection = SingletonConnection.getConnection();
    }

    @Override
    public tache ajouter(tache t) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("insert into tache(description,date_debut,date_fin,status,id_projet) values(?,?,?,?,?)");
            ps.setString(1, t.getDescription());
            ps.setDate(2, new java.sql.Date(t.getDate_debut().getTime()));
            ps.setDate(3,new java.sql.Date(t.getDate_fin().getTime()));
            ps.setString(4, t.getStatus());
            ps.setInt(5, t.getId_projet());
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return t;
    }



    @Override
    public List<tache> afficher() {
        List<tache> taches = new ArrayList<tache>();
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from tache");
            ResultSet rs =ps.executeQuery();

            while (rs.next()) {
                tache t= new tache();
                t.setId_tache(rs.getInt("id_tache"));
                t.setDescription(rs.getString("description"));
                t.setDate_debut(rs.getDate("date_debut"));
               t.setDate_fin(rs.getDate("date_fin"));

                t.setId_projet(rs.getInt("id_projet"));
                t.setStatus(rs.getString("status"));
                taches.add(t);
            }

        } catch (SQLException e) {
            System.err.println("Error fetching projects: " + e.getMessage());
        }

        return taches;
    }

    @Override
    public tache modifier(tache t) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("update tache  set description=?,date_debut=?,date_fin=?,id_projet=?,statut=? where id_tache=?");
            ps.setString(1, t.getDescription());
            ps.setDate(2, new java.sql.Date(t.getDate_debut().getTime()));
            ps.setDate(3,new java.sql.Date(t.getDate_fin().getTime()));
            ps.setString(4, t.getStatus());
            ps.setInt(5,t.getId_projet());
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return t;
    }

    @Override
    public tache supprimer(int id_tache) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("delete from tache where id_tache =?");
            ps.setInt(1, id_tache);
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }


        return null;
    }



    @Override
    public tache getTaches(int id_tache) {
       tache t = null ;
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from tache where id_tache=?");
            ps.setInt(1,id_tache);
            ResultSet rs =ps.executeQuery();

            if (rs.next()) {
                t= new tache();
                t.setId_tache(rs.getInt("id_tache"));
                t.setDescription(rs.getString("description"));

                t.setDate_debut(rs.getDate("date_debut"));

                t.setDate_fin(rs.getDate("date_fin"));
                t.setId_projet(rs.getInt("id_projet"));
                t.setStatus(rs.getString("status"));



            }

        } catch (SQLException e) {
            System.err.println("Error fetching projects: " + e.getMessage());
        }

        return t;
    }
}
