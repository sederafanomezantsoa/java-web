<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Connexion Sécurisée</title>
<!-- On lie le fichier CSS externe ici -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="login-box">
        <h2>Connexion</h2>
        
        <form action="traitementLogin.jsp" method="post">
            
            <div class="input-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="exemple@gmail.com" required>
            </div>

            <div class="input-group">
                <label>Mot de passe</label>
                <input type="password" name="pwd" required>
            </div>

            <button type="submit">Se connecter</button>
        </form>

        <div class="signup-link">
            Pas encore de compte ? <a href="signup.jsp">S'inscrire</a>
        </div>
    </div>

</body>
</html>