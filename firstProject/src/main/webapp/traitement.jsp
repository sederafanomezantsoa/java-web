<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="org.mindrot.jbcrypt.BCrypt" %>

	<% String mail = request.getParameter("email");
		String mdp = request.getParameter("pass");%>
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
				
				try(BufferedReader reader = new BufferedReader(new FileReader(cheminInfos))){
		            String ligne;
		            int x = 1;
		            while ((ligne = reader.readLine()) != null) {
		                String[] column = ligne.split(",");
						if(mail.equals(column[0])){
							System.out.println("ce mail a déjà du comte");
							x=0;
						}

		            }
		            if(x==1){
		            	// On hashe le mot de passe avant de l'écrire
		            	String mdpHashe = BCrypt.hashpw(mdp, BCrypt.gensalt());

		            	// On écrit l'email et le mot de passe hashé
		            	writer.write(mail + "," + mdpHashe);
			            writer.newLine(); // Retour à la ligne pour le prochain utilisateur
			            
			            System.out.println("Données ajoutées avec succès !");
			            response.sendRedirect("index.jsp");
		            }
		            else{
		            	response.sendRedirect("singup.php");
		            }
					
				}
				

			}
			else{
				 System.out.println("mail ou password NULL");
			}
            
        } catch (IOException e) {
            System.out.println("Erreur d'écriture : " + e.getMessage());
        }
        
	%>

</html>