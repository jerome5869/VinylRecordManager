<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<div class="span9">
	<div class="well">
		<h1>Profil</h1>
		<p>Gérez ici votre profil utilisateur. Attention, ces données apparaitront sur votre profil public.</p>
	</div>
	<div class="span7 well">
		<h2>Informations personnelles</h2>
		<div class="span3">
			<label>Nom d'utilisateur</label><input type="text" name="util" readonly></input>
			<label>Nom</label><input type="text" name="nom"></input>
			<label>Prénom</label><input type="text" name="prenom"></input>
		</div>
		<div class="span3">
			<label>Adresse mail</label><input type="text" name="mail"></input>
			<label>Langue</label>
			<SELECT name="langue" size="1">
				<OPTION>English</OPTION>
				<OPTION>Francais</OPTION>
			</SELECT>
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
		<div class="btn-group pull-right">
  			<button class="btn">Enregistrer</button>
  			<a class="btn" href="profil.jsp">Recharger</a>
  			<a class="btn" href="index.jsp">Accueil</a>
		</div>
	</div>
</div><!--/span-->