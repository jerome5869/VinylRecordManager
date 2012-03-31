<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       
<div class="span9">
	<div class="well">
		<h1>Bienvenue <%= session.getAttribute("nom") %></h1>
		<p>Profitez de votre bibliothèque et de vos playlists !</p>
	</div>
</div><!--/span-->