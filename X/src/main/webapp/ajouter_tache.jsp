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
            background-color: #ed9bae; /* Jaune */
            padding: 20px;
            height: 100vh;
            position: fixed;
            overflow-y: auto;
        }

        .sidebar h2 {
            color: #c30069; /* Vert */
            text-align: center;
            margin-bottom: 30px;
        }

        .sidebar ul {
            margin-top: 60px;
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 15px 0;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }

        .sidebar ul li a {
            color: white; /* Vert */
            text-decoration: none;
            font-size: 16px;
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
            color: #c30069; /* Vert */
            text-align: center;
        }

        form label {
            color: #c30069; /* Vert */
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

        select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button {
            background-color: rgba(205, 0, 102, 0.97); /* Vert */
            color: white;
            padding: 10px 20px;
            margin: 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: rgba(85, 0, 42, 0.97);
        }
    </style>
</head>
<body>
<div class="sidebar">
    <h2 style="color: #c30069;margin-top: 40px">Menu de Gestion</h2>
    <ul>
        <li ><a href="afficher">Gestion des Projets</a></li>
        <li style="background-color: #c30069;width: 100%"> <a href="home_tache">Gestion des Tâches</a></li>
        <li><a href="afficher_ressource">Gestion des Ressources</a></li>
        <li><a href="home_fournisseur">Gestion des Fournisseurs</a></li>
    </ul>
</div>
<div class="content">
    <h1 style="color: #c30069">Ajouter une tache</h1>
    <form action="ajouter_tache.do" method="post" style="margin: 20px">
        <label>Description</label><br>
        <input type="text" name="description" required><br><br>

        <label>Date de début</label><br>
        <input type="date" name="date_debut" required><br><br>

        <label>Date de fin</label><br>
        <input type="date" name="date_fin" required><br><br>

        <label>id_projet</label><br>
        <input type="text" name="id_projet" required><br><br>

        <label for="status">Status</label><br>
        <select id="status" name="status" required>
            <option value="A faire">A faire</option>
            <option value="En cours">En cours</option>
            <option value="termine">termine</option>
        </select><br><br>

        <button type="submit">Ajouter tache</button>
    </form>
</div>
</body>
</html>
