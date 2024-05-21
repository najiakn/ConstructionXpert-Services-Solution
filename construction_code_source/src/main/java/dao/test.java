package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class test {

    public static void main(String[] args) {
        try (Connection connection = SingletonConnection.getConnection()) {
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
    }
}