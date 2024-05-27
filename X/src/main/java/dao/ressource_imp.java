package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.fournisseur;
import metier.projet;
import metier.ressource;

import  java.util.Date;
public class ressource_imp  implements  IressourceDao{
    private Connection connection;

    public ressource_imp() {

        connection = SingletonConnection.getConnection();
    }

    @Override
    public ressource ajouter(ressource r) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO ressource (nom,type,quantite,id_tache,idf)VALUES(?,?,?,?,?)");
            ps.setString(1, r.getNom());
            ps.setString(2, r.getType());
            ps.setString(3, r.getQuantite());
            ps.setInt(4,r.getId_tache());
            ps.setInt(5,r.getId_fr());

            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return r;
    }


    @Override
    public List<ressource> afficher() {
        List<ressource> ressources = new ArrayList<ressource>();
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from ressource");
            ResultSet rs =ps.executeQuery();

            while (rs.next()) {
                ressource resso = new ressource();
                resso.setIdr(rs.getInt("idr"));
                resso.setNom(rs.getString("nom"));
                resso.setType(rs.getString("type"));
                resso.setQuantite(rs.getString("quantite"));
                resso.setId_tache(rs.getInt("id_tache"));
                resso.setId_fr(rs.getInt("idf"));

                ressources.add(resso);
            }

        } catch (SQLException e) {
            System.err.println("Error fetching projects: " + e.getMessage());
        }

        return ressources;
    }

    @Override
    public ressource modifier(ressource r) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("update ressource  set nom=?,type=?,quantite=?,id_tache=?,idf=? where idr=?");
            ps.setString(1, r.getNom());
            ps.setString(2, r.getType());
            ps.setString(3, r.getQuantite());
            ps.setInt(4,r.getId_tache());
            ps.setInt(5, r.getId_fr());
            ps.setInt(6,r.getIdr());
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return r;
    }

    @Override
    public ressource supprimer(int idr) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("delete from ressource where idr =?");
            ps.setInt(1, idr);
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }


        return null;
    }

    @Override
    public ressource getRessources(int idr) {
        ressource r = null ;
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from ressource where idr=?");
            ps.setInt(1,idr);
            ResultSet rs =ps.executeQuery();

            if (rs.next()) {
                r = new ressource();
                r.setIdr(rs.getInt("idr"));
                r.setNom(rs.getString("nom"));
                r.setType(rs.getString("type"));
                r.setQuantite(rs.getString("quantite"));
                r.setId_tache(rs.getInt("id_tache"));
                r.setId_fr(rs.getInt("idf"));




            }

        } catch (SQLException e) {
            System.err.println("Error fetching projects: " + e.getMessage());
        }

        return r;
    }
}
