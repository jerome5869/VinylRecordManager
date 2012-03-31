<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="span3">
	<div class="well sidebar-nav">
		<ul class="nav nav-list">
			<li class="nav-header">Communauté</li>
			<li><a href="collection.jsp">Collection globale &raquo;</a></li>
         		<%	if(session.getAttribute("nom") != null) {
         			out.println("<li class='nav-header'>Bibliothèques</li>");
         			out.println("<li><a href='macollection.jsp'>Ma collection &raquo;</a></li>");
         			out.println("<li><a href='tracked.jsp'>Vinyles suivis &raquo;</a></li>");
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
         			out.println("<li><a href='login.jsp'>Ma collection (Connexion requise)</a></li>");
         			out.println("<li><a href='login.jsp'>Vinyles suivis (Connexion requise)</a></li>");
         			out.println("<li class='nav-header'>Playlists</li>");
         			out.println("<li><a href='login.jsp'>Créer une playlist (Connexion requise)</a></li>");
         		}%>
		</ul>
	</div><!--/.well -->
</div><!--/span-->