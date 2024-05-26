<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter une tache </title>
    <style>
        body {
            display: flex;
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #ffffff;
        }

        .sidebar {
            width: 250px;
            background-color: #f9f871; /* Jaune */
            padding: 20px;
            height: 100vh;
            position: fixed;
        }

        .sidebar h2 {
            color: #3c763d; /* Vert */
            text-align: center;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 15px 0;
        }

        .sidebar ul li a {
            color: #3c763d; /* Vert */
            text-decoration: none;
            font-size: 18px;
        }

        .sidebar ul li a:hover {
            text-decoration: underline;
        }

        .content {
            margin-left: 270px;
            padding: 20px;
            width: calc(100% - 270px);
        }

        h1 {
            color: #3c763d; /* Vert */
        }

        form label {
            color: #3c763d; /* Vert */
            font-weight: bold;
        }

        form input[type="text"],
        form input[type="date"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button {
            background-color: #3c763d; /* Vert */
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2b542c;
        }
    </style>
</head>
<body>
<div class="sidebar">
    <h2>Menu de Gestion</h2>
    <ul>
        <li><a href="afficher">Gestion des Projets</a></li>
        <li><a href="home_tache">Gestion des Tâches</a></li>
        <li><a href="afficher_ressource">Gestion des Ressources</a></li>
        <li><a href="home_fournisseur">Gestion des Fournisseurs</a></li>
    </ul>
</div>
<div class="content">
    <h1>Ajouter une tache </h1>
    <form action="ajouter_ressource.do" method="post">

        <label>Nom</label><br>
        <input type="text" name="nom"><br><br>

        <label>Type</label><br>
        <input type="text" name="type"><br><br>

        <label>Quantite</label><br>
        <input type="text" name="quantite"><br><br>

        <label>Id_tache</label><br>
        <input type="text" name="id_tache"><br><br>

        <label>idf</label><br>
        <input type="text" name="idf"><br><br>


        <button type="submit">Ajouter Ressource </button>
    </form>
</div>
</body>
</html>