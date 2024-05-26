<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier Fournisseur</title>
    <link rel="stylesheet" href="styles.css">
    <style>
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
            margin: 0; /* Ajout pour annuler la marge par défaut */
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background-color: #ed9bae; /* Jaune */
            padding: 20px;
            height: 100vh;
        }

        .sidebar h2 {
            color: #c30069; /* Vert */
            text-align: center;
            margin-bottom: 30px;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
            margin: 0; /* Ajout pour annuler la marge par défaut */
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

        /* Content Styles */
        .content {
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Modifié pour aligner le contenu en haut */
            flex-grow: 1; /* Ajout pour permettre à la section de prendre autant d'espace que possible */
        }

        h1 {
            color: #c30069; /* Vert */
            text-align: center;
            margin: 30px;
            margin-top: 100px;
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
            color: #c30069; /* Vert */
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
            background-color: #c30069; /* Vert */
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #a60051; /* Vert plus foncé */
        }

    </style>
</head>
<body>

<div class="sidebar">
    <ul>
        <li ><a href="afficher">Gestion des Projets</a></li>
        <li><a href="home_tache">Gestion des Tâches</a></li>
        <li><a href="afficher_ressource">Gestion des Ressources</a></li>
        <li style="background-color: #c30069;width: 100%"><a href="home_fournisseur">Gestion des Fournisseurs</a></li>
    </ul>
</div>

<div class="content">
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
                <div class="input-row"> <!-- Ajout de la classe manquante -->
                    <label for="tele">Telephone</label>
                    <input type="text" id="tele" name="tele" value="${fournisseur.telephone}">
                </div> <!-- Correction de la fermeture de la balise div -->
            </div> <!-- Correction de l'emplacement de la balise de fermeture de la div -->

            <button type="submit" onclick="window.location.href='home_fournisseur'">Modifier</button>
        </form>
    </div>
</div>

</body>
</html>
