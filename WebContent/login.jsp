<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- tests -->
<% //session.removeAttribute("nom");
session.setAttribute("nom", "Valentin");
int nb_p = 7;
String[] st = new String[50];
for(int i=1; i <= nb_p; i++) st[i-1]="Playlist "+i;
session.setAttribute("playlists", st);%>

<!-- header -->
<jsp:include page="HeaderFooter/header.jsp"/>
	
<!-- side menu -->
<jsp:include page="Content/side_menu.jsp"/>
        
<!-- content -->
<div class="span9">
	<div class="well">
		<h1>Connexion</h1>
		<p>Utilisez votre nom d'utilisateur et votre mot de passe pour accéder à votre compte.</p>
	</div>
	<div class="span7 well">
		<label>Nom d'utilisateur</label><input type="text" name="util"></input>
		<label>Mot de passe</label><input type="password" name="mdp"></input>
	</div>
	<div class="span7 well">
		<div class="btn-toolbar pull-right">
			<div class="btn-group">
				<a class="btn" href="register.jsp">Je n'ai pas de compte utilisateur &raquo;</a>
			</div>
			<div class="btn-group">
  				<button class="btn">Valider</button>
  				<a class="btn" href="index.jsp">Accueil</a>
			</div>
		</div>
	</div>
</div><!--/span-->

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>