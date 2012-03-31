<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%	session.removeAttribute("nom");
	session.removeAttribute("playlists");
	session.removeAttribute("language");%>
	
<jsp:forward page="index.jsp" />
