<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
            color: rgba(97, 1, 49, 0.97); /* Vert */
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
<div class="menu-btn" onclick="toggleSidebar()">Menu</div>
<div class="sidebar">
    <h2 style="color: #c30069;margin-top: 40px">Menu de Gestion</h2>
    <ul>
        <li style="background-color: #c30069;width: 100%"><a href="afficher">Gestion des Projets</a></li>
        <li><a href="home_tache">Gestion des Tâches</a></li>
        <li><a href="afficher_ressource">Gestion des Ressources</a></li>
        <li><a href="home_fournisseur">Gestion des Fournisseurs</a></li>
    </ul>
</div>
<div class="content">
    <h1 style="color: #c30069">Ajouter un Projet</h1>
    <form action="ajouter_projet.do" method="post">
        <label>Nom</label><br>
        <input type="text" name="nom_projet" required><br><br>

        <label>Description</label><br>
        <input type="text" name="description" required><br><br>

        <label>Date de début</label><br>
        <input type="date" name="date_debut" required><br><br>

        <label>Date de fin</label><br>
        <input type="date" name="date_fin" required><br><br>

        <label>Budget</label><br>
        <input type="text" name="budget" required><br><br>

        <button type="submit">Ajouter</button>
    </form>
</div><script>
    function toggleSidebar() {
        var sidebar = document.querySelector('.sidebar');
        var sidebarUl = document.querySelector('.sidebar ul');
        if (sidebar.style.display === 'block' || sidebar.style.display === '') {
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