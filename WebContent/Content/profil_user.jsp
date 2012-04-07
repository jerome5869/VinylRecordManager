<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<div class="span9">
	<div class="well">
		<h1>Profil</h1>
		<p>Gérez ici votre profil utilisateur. Attention, ces données apparaitront sur votre profil public.</p>
	</div>
	<form:form action="modifUser.html" modelAttribute="userForm" method="post">
	<div class="span7 well">
		<h2>Informations personnelles</h2>
		<div class="span3">
			<form:label path="username">Nom d'utilisateur</form:label><form:input type="text" path="username" readonly="true" value=""/>
			<form:label path="lastname">Nom</form:label><form:input type="text" path="lastname" value=""/>
			<form:label path="firstname">Prénom</form:label><form:input type="text" path="firstname" value=""/>
		</div>
		<div class="span3">
			<form:label path="mail">Adresse mail</form:label><form:input type="text" path="mail" value=""/>
			<form:label path="language">Langue</form:label>
			<form:select path="language" size="1">
				<form:option value="English"/>
				<form:option value="Français"/>
			</form:select>
		</div>
	</div>
	<div class="span7 well">
		<h2>Informations complémentaires</h2>
		<div class="span3">
			<form:label path="bio">Biographie</form:label><form:input type="text" path="bio" value=""/>
			<form:label path="picture">Photo</form:label><form:input type="text" path="picture" value=""/>
		</div>
		<div class="span3">
			<form:label path="website">Site internet</form:label><form:input type="text" path="website" value=""/>
			<form:label path="socialnetwork">Réseau social</form:label><form:input type="text" path="socialnetwork" value=""/>
		</div>
	</div>
	<div class="span7 well">
		<div class="btn-group pull-right">
  			<input type="submit" class="btn" value="Enregister">
  			<a class="btn" href="userProfil.html">Recharger</a>
  			<a class="btn" href="index.jsp">Accueil</a>
		</div>
		${infosProfil}
	</div>
	</form:form>
</div><!--/span-->