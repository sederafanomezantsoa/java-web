<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Créer un compte</h2>
    
	<form action="traitement.jsp" method="post">
	    <label for="email">Adresse Email :</label><br>
	    <input type="email" name="email" required placeholder="exemple@domaine.com">
	    <br>
	    <label for="password">Mot de passe :</label><br>
	    <input type="password" name="pass" required minlength="4"><br><br>
	
	    <input type="submit" value="S'inscrire">
	</form>
</body>
</html>