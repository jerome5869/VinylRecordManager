<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>       
<div class="span9">
	<div class="well">
		<h1><spring:message code="label.bienvenue"/> <%= session.getAttribute("nom") %></h1>
		<p><spring:message code="label.messbienvenue"/></p>
	</div>
</div><!--/span-->