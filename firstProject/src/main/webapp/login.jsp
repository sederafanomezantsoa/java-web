<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h2>Entrez vos informations</h2>
    
    <!-- Les données seront envoyées vers resultat.jsp -->
    <form action="page.jsp" method="post">
        <label>email :</label>
        <input type="test" name="email" placeholder="exemple:@gmail.com">
        <label>password :</label>
        <input type="password" name="pwd">
        <input type="submit" value="Envoyer">
    </form>

</body>
</html>