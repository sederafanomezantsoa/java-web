<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Inscription</title>
<!-- On lie le même fichier CSS que pour le login -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="login-box">
        <h2>Créer un compte</h2>
        
        <form action="traitement.jsp" method="post">
            
            <div class="input-group">
                <label for="email">Adresse Email</label>
                <input type="email" id="email" name="email" required placeholder="exemple@domaine.com">
            </div>

            <div class="input-group">
                <label for="password">Mot de passe</label>
                <input type="password" id="password" name="pass" required minlength="4" placeholder="••••••••">
            </div>

            <button type="submit">S'inscrire</button>
        </form>

        <div class="signup-link">
            Déjà un compte ? <a href="login.jsp">Se connecter</a>
        </div>
    </div>

</body>
</html>