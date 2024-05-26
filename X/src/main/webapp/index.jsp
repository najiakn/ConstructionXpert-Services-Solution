<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon Site Web</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #ed9bae;
            padding: 10px 20px;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
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
            background-color: rgba(205, 0, 102, 0.97);
        }

        .menu-toggle {
            display: none;
            flex-direction: column;
            cursor: pointer;
        }

        .menu-toggle span {
            width: 25px;
            height: 3px;
            background-color: white;
            margin: 4px 0;
        }

        @media (max-width: 768px) {
            nav ul {
                flex-direction: column;
                width: 100%;
                display: none;
            }

            nav ul li {
                margin: 10px 0;
                text-align: center;
            }

            .menu-toggle {
                display: flex;
            }

            nav ul.showing {
                display: flex;
            }
        }

        section {
            padding: 60px 20px;
            text-align: center;
        }

        #home {
            background: url('https://mrkzgulfup.com/uploads/171674074243661.jpg') no-repeat center center;
            color: white; /* Pour que le texte soit visible sur l'image de fond */
            height: 80vh; /* Ajuste la section pour occuper toute la hauteur de la fenêtre */
            display: flex;
            flex-direction: column;
            background-size: cover;
            justify-content: center;
            align-items: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Pour que le texte soit plus lisible */
        }

        #apropos {
            background-color: #f8f9fa;
            color: #333;
            padding: 40px 20px;
        }

        #apropos .container {
            max-width: 1200px;
            margin: 0 auto;
            text-align: left;
        }

        #apropos h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        #apropos p {
            font-size: 1.2em;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        #apropos .info {
            display: flex;
            flex-wrap: wrap;
        }

        #apropos .info > div {
            flex: 1;
            padding: 20px;
        }

        #apropos .info img {
            width: 100%;
            max-width: 500px; /* Set a maximum width for both images */
            height: auto; /* Maintain aspect ratio */
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        @media (max-width: 768px) {
            #apropos .info {
                flex-direction: column;
            }
        }

        #contact {
            background-color: #ed9bae;
            background-size: cover;
            color: white;
            height: auto; /* Adjust the height to fit the content */
            padding: 40px 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Ensure text is readable */
            text-align: left; /* Align text to the left */
        }

        #contact .container {
            max-width: 600px;
            margin: 0 auto;
        }

        #contact h1 {
            font-size: 2em; /* Reduce the font size */
            margin-bottom: 20px;
        }

        #contact p {
            font-size: 1em; /* Reduce the font size */
            line-height: 1.4;
            margin-bottom: 10px;
        }

        #contact .info {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        #contact .info div {
            margin-bottom: 10px;
            flex-basis: calc(50% - 10px); /* Adjust the width to fit two columns */
        }

        #contact .info i {
            margin-right: 10px;
        }
    </style>
</head>
<body>

<header>
    <nav>
        <div class="logo">
            <img src="https://up6.cc/2024/05/171654192888561.png" alt="Logo de Mon Site">
        </div>
        <div class="menu-toggle" onclick="toggleMenu()">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <ul id="menu">
            <li><a href="#home">Home</a></li>
            <li><a href="#apropos">A Propos</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="afficher">Connexion</a></li> <!-- Nouveau lien pour la page JSP -->
        </ul>
    </nav>
</header>

<section id="home"></section>

<section id="apropos">
    <div class="container">
        <h1 style="color: rgba(205, 0, 102, 0.97)">A Propos de Notre Societe de Construction</h1>
        <p>Fondee en 1990, notre societe& de construction a plus de 30 ans d'experience dans la realisation de projets residentiels, commerciaux et industriels. Nous sommes fiers de notre engagement envers la qualite, la securite et la satisfaction de nos clients.</p>
        <p>Notre equipe d'experts travaille en etroite collaboration avec nos clients pour assurer que chaque projet est realise selon les normes les plus elevees et respecte les delais et les budgets etablis.</p>
        <div class="info">
            <div>
                <img src="https://mrkzgulfup.com/uploads/17167411014621.png" alt="Construction Image">
                <h2 style="color: rgba(205, 0, 102, 0.97)">Nos Services</h2>
                <p>Nous offrons une gamme complete de services de construction, y compris:</p>
                <ul>
                    <li>Construction residentielle</li>
                    <li>Construction commerciale</li>
                    <li>Renovations et extensions</li>
                    <li>Gestion de projet</li>
                    <li>Consultation en construction</li>
                </ul>
            </div>
            <div>
                <img src="https://mrkzgulfup.com/uploads/171674127736371.jpg" alt="Team Image">
                <h2 style="color: rgba(205, 0, 102, 0.97)">Notre Équipe</h2>
                <p>Notre equipe est composee de professionnels hautement qualifies, y compris des ingenieurs, des architectes, des gestionnaires de projet et des ouvriers spécialises. Nous sommes dedies à fournir des solutions innovantes et durables pour tous vos besoins en construction.</p>
            </div>
        </div>
    </div>
</section>

<section id="contact">
    <div class="container">
        <h1>Contactez-Nous</h1>
        <div class="info">
            <div>
                <i class="fas fa-map-marker-alt"></i>
                <p>123 Rue de la Construction, 75000 Paris, France</p>
            </div>
            <div>
                <i class="fas fa-phone"></i>
                <p>Telephone : +212 23 45 67 89</p>
            </div>
            <div>
                <i class="fas fa-envelope"></i>
                <p>Email : contact@societeconstruction.com</p>
            </div>
            <div>
                <i class="fas fa-clock"></i>
                <p>Heures d'ouverture : Lun - Ven : 9h - 18h</p>
            </div>
        </div>
    </div>
</section>

<script>
    function toggleMenu() {
        const menu = document.getElementById('menu');
        menu.classList.toggle('showing');
    }
</script>

</body>
</html>
