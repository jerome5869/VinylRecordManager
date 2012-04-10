<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- tests -->
<% //session.removeAttribute("nom");
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
	<form:form action="validation.html" modelAttribute="loginForm" method="post">
		<div class="well">
			<h1>Connexion</h1>
			<p>Utilisez votre nom d'utilisateur et votre mot de passe pour accéder à votre compte.</p>
		</div>
		<div class="span7 well">
			<form:label path="userName">Nom d'utilisateur</form:label><form:input type="text" path="userName"/> 
			<form:label path="password">Mot de passe</form:label><form:input type="password" path="password"/>
		</div>
		<div class="span7 well">
			<div class="btn-toolbar pull-right">
				<div class="btn-group">
					<a class="btn" href="register.jsp">Je n'ai pas de compte utilisateur &raquo;</a>
				</div>
				<div class="btn-group">
	  				<input type="submit" class="btn" value="Valider">
	  				<a class="btn" href="userRegister.html">Accueil</a>
				</div>
				${message}
			</div>
		</div>
	</form:form>
</div><!--/span-->

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>