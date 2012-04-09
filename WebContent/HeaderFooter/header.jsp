<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <title>Vinyl Record Collection Manager</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- styles -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>

<body>

<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container-fluid">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="index.jsp">Vinyl Record Collection Manager</a>
      <div class="nav-collapse">
        <ul class="nav">
          <li><a href="index.jsp">Accueil</a></li>
          <li><a href="collection.html">Collection</a></li>
          <% 	if(session.getAttribute("nom") != null) out.println("<li><a href='userProfil.html'>Mon Profil</a></li>");
          		else {
          			out.println("<li><a href='userLogin.html'>Me Connecter</a></li>");
          			out.println("<li><a href='userRegister.html'>M'Inscrire</a></li>"); 
          		}%>
        </ul>
        <% if(session.getAttribute("nom") != null) out.println("<p class='navbar-text pull-right'>Connecté en tant que <a href='profil.jsp'>"+session.getAttribute("nom")+"</a>.  <a href='logout.jsp'>Déconnexion</a></p>");
        else out.println("<p class='navbar-text pull-right'>Vous n'êtes pas connecté. <a href='userLogin.html'>Connectez-vous</a></p>");%>
      </div><!--/.nav-collapse -->
    </div>
  </div>
</div>

<div class="container-fluid">
      <div class="row-fluid">