<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String nom = request.getParameter("email");
		String mdp = request.getParameter("pwd");
	%>
	<p>nom : <%out.println(nom); %> </p> <br>
	<p>mdp : <%=mdp%></p>
</body>
</html>