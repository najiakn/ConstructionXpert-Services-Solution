package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import metier.fournisseur;
import  java.util.Date;
public class fournisseur_imp  implements  IfournisseurDao{
    private Connection connection;

    public fournisseur_imp() {
        connection = SingletonConnection.getConnection();
    }

    @Override
    public fournisseur ajouter(fournisseur f) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO fournisseur (nom,mail,tele)VALUES(?,?,?)");
            ps.setString(1, f.getNom());
            ps.setString(2, f.getMail());
            ps.setString(3, f.getTelephone());
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<fournisseur> fournisseurParMc(String mc) {
        return List.of();
    }

    @Override
    public List<fournisseur> afficher() {
        List<fournisseur> fournisseurs = new ArrayList<fournisseur>();
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from fournisseur");
            ResultSet rs =ps.executeQuery();

            while (rs.next()) {
                fournisseur fr = new fournisseur();
                fr.setIdf(rs.getInt("idf"));
                fr.setNom(rs.getString("nom"));
                fr.setMail(rs.getString("mail"));
                fr.setTelephone(rs.getString("tele"));


                fournisseurs.add(fr);
            }

        } catch (SQLException e) {
            System.err.println("Error fetching projects: " + e.getMessage());
        }

        return fournisseurs;
    }

    @Override
    public fournisseur modifier(fournisseur f) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("update fournisseur  set nom=?,mail=?,tele=? where idf=?");
            ps.setString(1, f.getNom());
            ps.setString(2, f.getMail());
            ps.setString(3, f.getTelephone());
            ps.setInt(4,f.getIdf());

            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public fournisseur supprimer(int idf) {
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("delete from fournisseur where idf =?");
            ps.setInt(1, idf);
            ps.executeUpdate();

            ps.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }


        return null;
    }


    @Override
    public fournisseur getFournisseur(int idf) {
        fournisseur f = null ;
        Connection connection = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("select * from fournisseur where idf=?");
            ps.setInt(1,idf);
            ResultSet rs =ps.executeQuery();

            if (rs.next()) {
                f = new fournisseur();
                f.setIdf(rs.getInt("idf"));
                f.setNom(rs.getString("nom"));
                f.setMail(rs.getString("mail"));
                f.setTelephone(rs.getString("tele"));


            }

        } catch (SQLException e) {
            System.err.println("Error fetching projects: " + e.getMessage());
        }

        return f;
    }
}
