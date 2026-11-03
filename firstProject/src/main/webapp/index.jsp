<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bienvenue</title>
<!-- Lien vers le CSS commun -->
<link rel="stylesheet" href="css/style.css">
<style>
    /* --- Styles spécifiques à la page de bienvenue --- */
    
    .welcome-text {
        color: #ddd;
        text-align: center;
        font-size: 16px;
        margin-bottom: 20px;
    }

    .welcome-email {
        color: #00d2ff;
        font-weight: 600;
        font-size: 22px;
        display: block;
        margin-top: 10px;
        margin-bottom: 30px;
        /* Animation d'effet lumineux sur l'email */
        animation: pulseGlow 2s infinite;
    }

    @keyframes pulseGlow {
        0% { text-shadow: 0 0 10px rgba(0, 210, 255, 0.4); }
        50% { text-shadow: 0 0 20px rgba(0, 210, 255, 0.8), 0 0 30px rgba(0, 210, 255, 0.4); }
        100% { text-shadow: 0 0 10px rgba(0, 210, 255, 0.4); }
    }

    /* Bouton de déconnexion personnalisé (Rouge/Orange) */
    .logout-btn {
        display: inline-block;
        width: 100%;
        padding: 14px;
        background: linear-gradient(to right, #ff416c, #ff4b2b); /* Dégradé rouge */
        border: none;
        border-radius: 10px;
        color: white;
        font-size: 16px;
        font-weight: 600;
        text-align: center;
        text-decoration: none;
        cursor: pointer;
        transition: all 0.3s ease;
        box-shadow: 0 5px 15px rgba(255, 65, 108, 0.3);
        box-sizing: border-box;
    }

    .logout-btn:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 20px rgba(255, 65, 108, 0.6);
        background: linear-gradient(to right, #ff4b2b, #ff416c);
    }

    .logout-btn:active {
        transform: translateY(1px);
    }
</style>
</head>
<body>

    <% 
        // 1. Récupération de l'email depuis la session
        String email = (String) session.getAttribute("emailUtilisateur");
        
        // 2. Sécurité : Si pas de session, on renvoie vers le login
        if(email == null){
            response.sendRedirect("login.jsp");
            return; // On arrête l'exécution ici pour ne pas charger le HTML
        }
    %>

    <!-- Conteneur avec l'effet verre -->
    <div class="login-box">
        <h2>Connexion réussie</h2>
        
        <div class="welcome-text">
            Heureux de vous revoir,
            <span class="welcome-email"><%= email %></span>
        </div>

        <!-- Bouton de déconnexion -->
        <a href="logout.jsp" class="logout-btn">Se déconnecter</a>
    </div>

</body>
</html>