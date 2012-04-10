<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div class="span3">
	<div class="well sidebar-nav">
		<ul class="nav nav-list">
			<li class="nav-header">Communauté</li>
			<li><a href="collection.html">Collection globale &raquo;</a></li>
         		<%	if(session.getAttribute("nom") != null) {
         			out.println("<li class='nav-header'>Bibliothèques</li>");
         			out.println("<li><a href='ownCollection.html'>Ma collection &raquo;</a></li>");
         			out.println("<li><a href='trackedList.html'>Vinyles suivis &raquo;</a></li>");
         			out.println("<li class='nav-header'>Playlists</li>");
         			String[] s = (String[])session.getAttribute("playlists");
         			int i = 0;
         			while(i < s.length && s[i] != null) {
         				out.println("<li><a href='#'>"+s[i]+" &raquo;</a></li>");
         				i++;
         			}
         			out.println("<li><a href='#'>Créer une playlist &raquo;</a></li>");
         		}
         		else {
         			out.println("<li class='nav-header'>Bibliothèques</li>");
         			out.println("<li><a href='userLogin.html'>Ma collection (Connexion requise)</a></li>");
         			out.println("<li><a href='userLogin.html'>Vinyles suivis (Connexion requise)</a></li>");
         			out.println("<li class='nav-header'>Playlists</li>");
         			out.println("<li><a href='userLogin.html'>Créer une playlist (Connexion requise)</a></li>");
         		}%>
		</ul>
	</div><!--/.well -->
</div><!--/span-->