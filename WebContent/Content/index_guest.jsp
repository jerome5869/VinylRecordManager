<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="span9">
	<div class="hero-unit">
		<h1><spring:message code="label.bienvenue"/></h1>
		<p><spring:message code="label.bienvenue1"/></p>
		<p><a class="btn btn-primary btn-large" href="userRegister.html"><spring:message code="label.bienvenue2"/></a></p>
	</div>
	<div class="row-fluid">
		<div class="span4">
			<h2><spring:message code="label.titleguest1"/></h2>
			<p><spring:message code="label.guest1"/></p>
			<p><a class="btn" href="userRegister.html"><spring:message code="label.linkguest1"/></a></p>
		</div><!--/span-->
		<div class="span4">
			<h2><spring:message code="label.titleguest2"/></h2>
			<p><spring:message code="label.guest2"/></p>
			<p><a class="btn" href="userLogin.html"><spring:message code="label.linkguest2"/></a></p>
		</div><!--/span-->
		<div class="span4">
			<h2><spring:message code="label.titleguest3"/></h2>
			<p><spring:message code="label.guest3"/></p>
			<p><a class="btn" href="#"><spring:message code="label.linkguest3"/></a></p>
		</div><!--/span-->
	</div><!--/row-->
</div><!--/span-->