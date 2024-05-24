<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon Site Web</title>
    <link rel="stylesheet" href="styles.css">
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #333;
        padding: 10px 0;
    }

    nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 20px;
    }

    .logo img {
        height: 40px; /* Ajustez cette taille selon votre logo */
    }

    nav ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: flex;
    }

    nav ul li {
        margin: 0 15px;
    }

    nav ul li a {
        color: white;
        text-decoration: none;
        padding: 5px 10px;
        transition: background-color 0.3s;
    }

    nav ul li a:hover {
        background-color: #575757;
    }

    section {
        padding: 60px 20px;
        text-align: center;
    }

    #home {
        background-color: #f4f4f4;
    }

    #apropos {
        background-color: #e4e4e4;
    }

    #contact {
        background-color: #d4d4d4;
    }
    #home {
        background: url('https://up6.cc/2024/05/171654139222171.png') no-repeat center center;

        color: white; /* Pour que le texte soit visible sur l'image de fond */
        height: 80vh; /* Ajuste la section pour occuper toute la hauteur de la fenêtre */
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Pour que le texte soit plus lisible */
    }
</style>
</head>
<body>

<header>

    <nav>
        <div class="logo">
            <img src="https://up6.cc/2024/05/171654192888561.png" alt="Logo de Mon Site">
        </div>
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#apropos">À Propos</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="afficher">Connexion</a></li> <!-- Nouveau lien pour la page JSP -->

        </ul>
    </nav>
</header>

<section id="home">

</section>

<section id="apropos">
    <h1>À Propos</h1>
    <p>Ceci est la section à propos de nous.</p>
</section>

<section id="contact">
    <h1>Contact</h1>
    <p>Ceci est la section de contact.</p>
</section>

</body>
</html>