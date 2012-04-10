<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- header -->
<jsp:include page="HeaderFooter/header.jsp"/>
	
<!-- side menu -->
<jsp:include page="Content/side_menu.jsp"/>
        
<!-- content -->
<div class="span9">
	<div class="well">
		<h1>S'inscrire</h1>
		<p>Créez ici votre compte. Seules les informations personnelles sont obligatoires.</p>
	</div>
	<form:form action="ajoutUser.html" modelAttribute="userForm" method="post">
	<div class="span7 well">
		<h2>Informations personnelles</h2>
		<div class="span3">
			<form:label path="username">Nom d'utilisateur</form:label><form:input type="text" path="username"/>
			<form:label path="lastname">Nom</form:label><form:input type="text" path="lastname"/>
			<form:label path="firstname">Prénom</form:label><form:input type="text" path="firstname"/>
			<form:label path="language">Langue</form:label>
			<form:select path="language" size="1">
				<form:option value="English"/>
				<form:option value="Français"/>
			</form:select>
		</div>
		<div class="span3">
			<form:label path="mail">Adresse mail</form:label><form:input type="text" path="mail"/>
			<form:label path="password">Mot de passe</form:label><form:input type="password" path="password"/>
			<form:label path="password1">Resaisir le mot de passe</form:label><form:input type="password" path="password1"/>
			${errorPassword}
		</div>
	</div>
	<div class="span7 well">
		<h2>Informations complémentaires</h2>
		<div class="span3">
			<form:label path="bio">Biographie</form:label><form:input type="text" path="bio"/>
			<form:label path="picture">Photo</form:label><form:input type="text" path="picture"/>
		</div>
		<div class="span3">
			<form:label path="website">Site internet</form:label><form:input type="text" path="website"/>
			<form:label path="socialnetwork">Réseau social</form:label><form:input type="text" path="socialnetwork"/>
		</div>
	</div>
	<div class="span7 well">
		<div class="btn-toolbar pull-right">
			<div class="btn-group">
				<a class="btn" href="userLogin.html">J'ai déjà un compte utilisateur &raquo;</a>
			</div>
			<div class="btn-group">
  				<input type="submit" class="btn" value="Valider">
  				<a class="btn" href="index.jsp">Accueil</a>
			</div>
		</div>
		${errorEmptyfield}
	</div>
	</form:form>
</div><!--/span-->

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>