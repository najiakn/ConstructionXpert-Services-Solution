<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page de Gestion</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>body {
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

.btn-ajouter {
    background-color: #3c763d; /* Vert */
    color: #ffffff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.btn-ajouter:hover {
    background-color: #2b542c;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #f9f871; /* Jaune */
    color: #3c763d; /* Vert */
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

.btn-supprimer {
    background-color: #d9534f; /* Rouge */
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 3px;
    text-decoration: none;
}

.btn-supprimer:hover {
    background-color: #c9302c;
}

.btn-modifier {
    background-color: #5bc0de; /* Bleu clair */
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 3px;
    text-decoration: none;
}

.btn-modifier:hover {
    background-color: #31b0d5;
}</style>
<body>
<div class="sidebar">
    <h2>Menu de Gestion</h2>
    <ul>
        <li><a href="afficher">Gestion des Projets</a></li>
        <li><a href="home_tache">Gestion des Tâches</a></li>
        <li><a href="#gestion-ressources">Gestion des Ressources</a></li>
        <li><a href="#gestion-fournisseurs">Gestion des Fournisseurs</a></li>
    </ul>
</div>
<div class="content">
    <h1>Gestion des Projets</h1>
    <button class="btn-ajouter" onclick="window.location.href='ajouter.jsp'">Ajouter</button>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Description</th>
            <th>Date Début</th>
            <th>Date Fin</th>
            <th>Budget</th>
            <th>Supprimer</th>
            <th>Modifier</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${model.projets}" var="p">
            <tr>
                <td>${p.id_projet}</td>
                <td>${p.nom_projet}</td>
                <td>${p.description_projet}</td>
                <td>${p.date_debut}</td>
                <td>${p.date_fin}</td>
                <td>${p.budget}</td>
                <td><a class="btn-supprimer" onclick="return confirm('Êtes-vous sûr ?')" href="supprimer.do?id_projet=${p.id_projet}">Supprimer</a></td>
                <td><a class="btn-modifier" href="modifier.do?id_projet=${p.id_projet}">Modifier</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>