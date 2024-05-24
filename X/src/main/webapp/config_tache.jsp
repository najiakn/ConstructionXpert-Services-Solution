<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23/05/2024
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation du Projet</title>
    <link rel="stylesheet" href="styles.css">
</head>
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
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h1 {
        color: #3c763d; /* Vert */
    }

    .card {
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        max-width: 500px;
        width: 100%;
    }

    .card div {
        margin-bottom: 10px;
    }

    .card label {
        font-weight: bold;
        color: #3c763d; /* Vert */
    }

    .card span {
        display: inline-block;
        margin-left: 10px;
    }
</style>
<body>
<div class="sidebar">
    <h2>Menu de Gestion</h2>
    <ul>
        <li><a href="afficher">Gestion des Projets</a></li>
        <li><a href="home_tache">Gestion des Tâches</a></li>
        <li><a href="gestion.jsp#gestion-ressources">Gestion des Ressources</a></li>
        <li><a href="gestion.jsp#gestion-fournisseurs">Gestion des Fournisseurs</a></li>
    </ul>
</div>
<div class="content">
    <div class="card">

        <div>
            <label>Description :</label>
            <span>${tache.description}</span>
        </div>
        <div>
            <label>Date de début :</label>
            <span>${tache.date_debut}</span>
        </div>
        <div>
            <label>Date de fin :</label>
            <span>${tache.date_fin}</span>
        </div>
        <div>
            <label>id_projet :</label>
            <span>${tache.id_projet}</span>
        </div>

        <div>
            <label>status :</label>
            <span>${tache.status}</span>
        </div>
    </div>
</div>
</body>
</html>