<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
      <a class="brand" href="index.jsp"><spring:message code="label.titleapp"/></a>
      <div class="nav-collapse">
        <ul class="nav">
          <li><a href="index.jsp"><spring:message code="label.accueil"/></a></li>
          <li><a href="collection.html"><spring:message code="label.collection"/></a></li>
          <% if(session.getAttribute("nom") != null) {%>
          		<li><a href='userProfil.html'><spring:message code='label.profil'/></a></li>
          		<% } else {%>
          			<li><a href='userLogin.html'><spring:message code="label.connect"/></a></li>
          			<li><a href='userRegister.html'><spring:message code="label.register"/></a></li> 
          		<%}%>
          		<p class="navbar-text pull-right">
    		<a href="?lang=fr">fr</a>
    |		<a href="?lang=en">en</a>
		</p>
        </ul>
Current Locale : ${pageContext.response.locale}
        <% if(session.getAttribute("nom") != null) {%>
        	<p class='navbar-text pull-right'><spring:message code="label.connexion1"/> <a href='profil.jsp'>"+session.getAttribute("nom")+"</a>.  <a href='logout.jsp'><spring:message code='label.deconnexion'/></a></p>
       <%} else {%>
       		<p class='navbar-text pull-right'><spring:message code='label.connexion1'/>. <a href='userLogin.html'><spring:message code='label.connexion'/></a></p>
       	<%} %>
      </div><!--/.nav-collapse -->
    </div>
  </div>
</div>

<div class="container-fluid">
      <div class="row-fluid">