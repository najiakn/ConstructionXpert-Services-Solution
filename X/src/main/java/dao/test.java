package dao;

import metier.projet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class test {

    public static void main(String[] args) {

        //tester la connection  & l'affcihage
      /*  try (Connection connection = SingletonConnection.getConnection()) {
            String query = "SELECT * FROM projet";
            try (Statement statement = connection.createStatement();
                 ResultSet resultSet = statement.executeQuery(query)) {
                while (resultSet.next()) {
                    int id_projet = resultSet.getInt("id_projet");
                    String nom_projet = resultSet.getString("nom_projet");
                    String description = resultSet.getString("description");
                    String date_debut = resultSet.getString("date_debut");
                    String date_fin = resultSet.getString("date_fin");
                    float budget = resultSet.getFloat("budget");

                    System.out.println("ID Projet: " + id_projet);
                    System.out.println("Nom Projet: " + nom_projet);
                    System.out.println("Description: " + description);
                    System.out.println("Date Debut: " + date_debut);
                    System.out.println("Date Fin: " + date_fin);
                    System.out.println("Budget: " + budget);
                    System.out.println("-----------");
                }
            }
        } catch (SQLException e) {
            System.err.println("Error during database operation: " + e.getMessage());
        }

        //tester ajouter-------------------------------------------------------------------------------------------

        projet_imp dao = new projet_imp();
       SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
       try{
           Date dated=dateFormat.parse("22-11-2023");
           Date datef =dateFormat.parse("11-08-2024");
           projet p1= dao.ajouter(new projet("projet5 ","projet desc 5 ",dated,datef, 5.2F));

           System.out.println(p1.toString());

       }catch (ParseException e){
           System.err.println("erreur lors de la connection "+e.getMessage());

       }

    }*/
        //tester afficher implementation---------------------------------------------------
        projet_imp dao = new projet_imp();
        List<projet> pros=dao.afficher();
        for(projet p : pros){
            System.out.println(p.toString());
        }
    }}