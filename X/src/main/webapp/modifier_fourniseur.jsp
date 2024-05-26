<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier Fournisseur</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        .input-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .input-row {
            flex: 1;
            margin-right: 10px;
        }

        .input-row:last-child {
            margin-right: 0;
        }

        .input-group label {
            display: block;
        }

        .input-group input {
            width: 100%;
        }
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styles */
        body {
            display: flex;
            font-family: Arial, sans-serif;
            background-color: #ffffff;
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background-color: #f9f871; /* Jaune */
            padding: 20px;
            height: 100vh;
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

        /* Content Styles */
        .content {
            margin-left: 270px; /* Sidebar width + some margin */
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        h1 {
            color: #3c763d; /* Vert */
        }

        /* Card Styles */
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

        .card input[type="text"],
        .card input[type="date"] {
            width: calc(100% - 20px);
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
    <ul>
        <li><a href="afficher">Gestion des Projets</a></li>
        <li><a href="home_tache">Gestion des Tâches</a></li>
        <li><a href="afficher_ressource">Gestion des Ressources</a></li>
        <li><a href="home_fournisseur">Gestion des Fournisseurs</a></li>
    </ul>
</div>

<div class="content">
    <h1>Modifier Tache</h1>
    <div class="card">
        <form action="modifier_fournisseur.do" method="post">
            <div class="input-group">
                <div class="input-row">
                    <label for="idf">ID</label>
                    <input type="text" id="idf" name="idf" value="${fournisseur.idf}" readonly>
                </div>

                <div class="input-row">
                    <label for="nom">Nom</label>
                    <input type="text" id="nom" name="nom" value="${fournisseur.nom}">
                </div>
            </div>

            <div class="input-group">

                <div class="input-row">
                    <label for="mail">mail</label>
                    <input type="text" id="mail" name="mail" value="${fournisseur.mail}">
                </div>
                // <div class="input-row">
                <label for="tele">Telephone</label>
                <input type="text" id="tele" name="tele" value="${fournisseur.telephone}">
            </div>
            </div>






            <button type="submit"  onclick="window.location.href='home_fournisseur'">Modifier</button>
        </form>
    </div>
</div>

</body>
</html>
