<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="org.mindrot.jbcrypt.BCrypt" %>

<% String mail = request.getParameter("email");
	String mdp = request.getParameter("pwd");
	String dossier = System.getProperty("user.home")+"/dataweb";
	String cheminInfos = dossier+"/infos.csv";
	try(BufferedReader reader = new BufferedReader(new FileReader(cheminInfos))){
        String ligne;
        int x = 0;
        while ((ligne = reader.readLine()) != null) {
            String[] column = ligne.split(",");
			if(mail.equals(column[0]) && BCrypt.checkpw(mdp,column[1])){
				x=1;
				//changer la page
				session.setAttribute("emailUtilisateur", mail);
				response.sendRedirect("index.jsp");
				break;
			}
			else if((mail.equals(column[0]) && !BCrypt.checkpw(mdp,column[1]))){
				response.sendRedirect("login.jsp");
				x=1;
				break;
			}

        }
		if(x==0){
			//changer vers singup
			response.sendRedirect("singup.jsp");
        }
	} catch (IOException e) {
        System.out.println("Erreur de lecture : " + e.getMessage());
        return;
    }
%>
