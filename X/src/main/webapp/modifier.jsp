<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Modifier Projet</title>
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
    <li style="background-color: #c30069;width: 100%"><a href="afficher">Gestion des Projets</a></li>
    <li><a href="home_tache">Gestion des Tâches</a></li>
    <li><a href="afficher_ressource">Gestion des Ressources</a></li>
    <li><a href="home_fournisseur">Gestion des Fournisseurs</a></li>
  </ul>
</div>

<div class="content">
  <div class="card">
    <form action="modifier_projet.do" method="post">
      <div class="input-group">
        <div class="input-row">
          <label for="id_projet">ID</label>
          <input type="text" id="id_projet" name="id_projet" value="${projet.id_projet}" readonly>
        </div>
        <div class="input-row">
          <label for="nom_projet">Nom</label>
          <input type="text" id="nom_projet" name="nom_projet" value="${projet.nom_projet}">
        </div>
      </div>

      <div class="input-group">
        <div class="input-row">
          <label for="description">Description</label>
          <input type="text" id="description" name="description" value="${projet.description_projet}">
        </div>
        <div class="input-row">
          <label for="date_debut">Date de début</label>
          <input type="date" id="date_debut" name="date_debut" value="${projet.date_debut}">
        </div>
      </div>

      <div class="input-group">
        <div class="input-row">
          <label for="date_fin">Date de fin</label>
          <input type="date" id="date_fin" name="date_fin" value="${projet.date_fin}">
        </div>
        <div class="input-row">
          <label for="budget">Budget</label>
          <input type="text" id="budget" name="budget" value="${projet.budget}">
        </div>
      </div>

      <button type="submit" onclick="window.location.href='afficher'">Modifier</button>
    </form>
  </div>
</div>

</body>
</html>
