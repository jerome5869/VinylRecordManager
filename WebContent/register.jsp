<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
	<div class="span7 well">
		<h2>Informations personnelles</h2>
		<div class="span3">
			<label>Nom d'utilisateur</label><input type="text" name="util"></input>
			<label>Nom</label><input type="text" name="nom"></input>
			<label>Prénom</label><input type="text" name="prenom"></input>
			<label>Langue</label>
			<SELECT name="langue" size="1">
				<OPTION>English</OPTION>
				<OPTION>Francais</OPTION>
			</SELECT>
		</div>
		<div class="span3">
			<label>Adresse mail</label><input type="text" name="mail"></input>
			<label>Mot de passe</label><input type="password" name="mdp1"></input>
			<label>Resaisir le mot de passe</label><input type="password" name="mdp2"></input>
		</div>
	</div>
	<div class="span7 well">
		<h2>Informations complémentaires</h2>
		<div class="span3">
			<label>Biographie</label><input type="text" name="bio"></input>
			<label>Photo</label><input type="text" name="photo"></input>
		</div>
		<div class="span3">
			<label>Site internet</label><input type="text" name="site"></input>
			<label>Réseau social</label><input type="text" name="reseau"></input>
		</div>
	</div>
	<div class="span7 well">
		<div class="btn-toolbar pull-right">
			<div class="btn-group">
				<a class="btn" href="login.jsp">J'ai déjà un compte utilisateur &raquo;</a>
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