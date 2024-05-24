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
    <title>Ajouter un Projet</title>
    <link rel="stylesheet" href="styles.css">
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
<%@include file="header.jsp" %>
<div class="sidebar">
    <h2>Menu de Gestion</h2>
    <ul>
        <li><a href="afficher">Gestion des Projets</a></li>
        <li><a href="gestion.jsp#gestion-taches">Gestion des Tâches</a></li>
        <li><a href="gestion.jsp#gestion-ressources">Gestion des Ressources</a></li>
        <li><a href="gestion.jsp#gestion-fournisseurs">Gestion des Fournisseurs</a></li>
    </ul>
</div>
<div class="content">
    <h1>Ajouter un Projet</h1>
    <form action="ajouter_projet.do" method="post">
        <label>Nom</label><br>
        <input type="text" name="nom_projet"><br><br>

        <label>Description</label><br>
        <input type="text" name="description"><br><br>

        <label>Date de début</label><br>
        <input type="date" name="date_debut"><br><br>

        <label>Date de fin</label><br>
        <input type="date" name="date_fin"><br><br>

        <label>Budget</label><br>
        <input type="text" name="budget"><br><br>

        <button type="submit">Ajouter</button>
    </form>
</div>
</body>
</html>