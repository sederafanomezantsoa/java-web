<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>singup</title>
</head>
<body>
<h2>Créer un compte</h2>
    
    <form action="traitement.jsp" method="post">
        <label for="email">Adresse Email :</label><br>
        <input type="email" id="email" name="email" required placeholder="exemple@domaine.com"><br><br>

        <label for="password">Mot de passe :</label><br>
        <input type="password" id="password" name="motDePasse" required minlength="6"><br><br>

        <input type="submit" value="S'inscrire">
    </form>
</body>
</html>