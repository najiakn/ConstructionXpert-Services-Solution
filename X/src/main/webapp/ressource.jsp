<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Page de Gestion</title>
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
    color: #3c763d; /* Vert */
    text-align: center;
  }

  .btn-ajouter {
    background-color: rgba(205, 0, 102, 0.97); /* Vert */
    color: white;
    padding: 10px 20px;
    margin: 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  .btn-ajouter:hover {
    background-color: rgba(85, 0, 42, 0.97);
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px;
  }

  table, th, td {
    border: 1px solid #ddd;
  }

  th, td {
    padding: 10px;
    text-align: left;
  }

  th {
    background-color: #ed9bae; /* Jaune */
    color: #c30069; /* Vert */
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  .btn-supprimer {
    background-color: #1d5bff; /* Rouge */
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 3px;
    text-decoration: none;
  }

  .btn-supprimer:hover {
    background-color: #051745;
  }

  .btn-modifier {
    background-color: #1d5bff; /* Bleu clair */
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 3px;
    text-decoration: none;
  }

  .btn-modifier:hover {
    background-color: #051745;
  }

  .menu-btn {
    display: none;
    background-color: #c30069;
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
    width: 100%;
    text-align: center;
    font-size: 20px;
    margin-top: 20px;
  }

  @media (max-width: 768px) {
    body {
      flex-direction: column;
    }

    .sidebar {
      width: 100%;
      height: auto;
      position: relative;
      display: none;
    }

    .sidebar ul {
      display: none;
    }

    .content {
      margin-left: 0;
      width: 100%;
    }

    .menu-btn {
      display: block;
    }
  }

  @media (max-width: 480px) {
    .sidebar ul li {
      font-size: 16px;
    }

    .btn-ajouter {
      font-size: 14px;
      padding: 8px 16px;
    }

    table, th, td {
      font-size: 12px;
      padding: 4px;
    }
  }
</style>
<body>
<div class="menu-btn" onclick="toggleSidebar()">Menu</div>
<div class="sidebar">
  <h2 style="color: #c30069;margin-top: 40px">Menu de Gestion</h2>
  <ul>
    <li><a href="afficher">Gestion des Projets</a></li>
    <li><a href="home_tache">Gestion des Tâches</a></li>
    <li style="background-color: #c30069;width: 100%"><a href="afficher_ressource">Gestion des Ressources</a></li>
    <li><a href="home_fournisseur">Gestion des Fournisseurs</a></li>
  </ul>
</div>
<div class="content">
  <h1 style="color: #c30069">Gestion des Ressources</h1>
  <button class="btn-ajouter" onclick="window.location.href='ajouter_ressource.jsp'">Ajouter</button>
  <table>
    <thead>
    <tr>
      <th>ID</th>
      <th>Nom</th>
      <th>Type</th>
      <th>Quantité</th>
      <th>ID Tâche</th>
      <th>ID Fournisseur</th>
      <th>Supprimer</th>
      <th>Modifier</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${modelr.ressources}" var="r">
      <tr>
        <td>${r.idr}</td>
        <td>${r.nom}</td>
        <td>${r.type}</td>
        <td>${r.quantite}</td>
        <td>${r.id_tache}</td>
        <td>${r.id_fr}</td>
        <td><a class="btn-supprimer" onclick="return confirm('Êtes-vous sûr ?')" href="supprimer_ressource.do?idr=${r.idr}">Supprimer</a></td>
        <td><a class="btn-modifier" href="modifier_r.do?idr=${r.idr}">Modifier</a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
<script>
  function toggleSidebar() {
    var sidebar = document.querySelector('.sidebar');
    var sidebarUl = document.querySelector('.sidebar ul');
    if (sidebar.style.display === 'block') {
      sidebar.style.display = 'none';
      sidebarUl.style.display = 'none';
    } else {
      sidebar.style.display = 'block';
      sidebarUl.style.display = 'block';
    }
  }
</script>
</body>
</html>