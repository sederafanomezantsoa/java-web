<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Traitement</title>
</head>
<body>
	<% String mail = request.getParameter("email");
		String mdp = request.getParameter("pass");%>
	<p>mail :  <%= mail %></p>
	<p>mail :  <%= mdp %></p>
	<%
		String dossier = System.getProperty("user.home")+"/dataweb";
		String cheminInfos = dossier+"/infos.csv";
		//Création du dossier s'il n'existe pas
        File dir = new File(dossier);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        
		try (BufferedWriter writer = new BufferedWriter(new FileWriter(cheminInfos, true))) {
			if(mail!=null && mdp != null){
				boolean x = true;
				try(BufferedReader reader = new BufferedReader(new FileReader(cheminInfos))){
		            String ligne;
		            while ((ligne = reader.readLine()) != null) {
		                String[] column = ligne.split(",");
						if(mail==column[0]){
							out.println("<p style='color:red;'>ce mail a déjà du comte</p>");
							x=false;
						}

		            }
		            if(x==true){
			            writer.write(mail + "," + mdp);
			            writer.newLine(); // Retour à la ligne pour le prochain utilisateur
			            
			            out.println("<p style='color:green;'> Données ajoutées avec succès !</p>");
			            out.println("<p>Fichier enregistré ici : <strong>" + cheminInfos+ "</strong></p>");
		            }
					
				}
				

			}
			else{
				 out.println("<p style='color:red;'>mail ou password NULL</p>");
			}
            
        } catch (IOException e) {
            out.println("<p style='color:red;'> Erreur d'écriture : " + e.getMessage() + "</p>");
        }
        
	%>

</html>