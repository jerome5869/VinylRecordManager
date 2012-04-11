<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="span9">
	<div class="well">
		<h1><spring:message code="label.profiltitle"/></h1>
		<p><spring:message code="label.profiltext"/></p>
	</div>
	<form:form action="modifUser.html" modelAttribute="userForm" method="post">
	<div class="span7 well">
		<h2><spring:message code="label.formtitle1"/></h2>
		<div class="span3">
			<form:label path="username"><spring:message code="label.formattribute1"/></form:label><form:input type="text" path="username" readonly="true" value=""/>
			<form:label path="lastname"><spring:message code="label.formattribute2"/></form:label><form:input type="text" path="lastname" value=""/>
			<form:label path="firstname"><spring:message code="label.formattribute3"/></form:label><form:input type="text" path="firstname" value=""/>
		</div>
		<div class="span3">
			<form:label path="mail"><spring:message code="label.formattribute4"/></form:label><form:input type="text" path="mail" value=""/>
			<form:label path="language"><spring:message code="label.formattribute5"/></form:label>
			<form:select path="language" size="1">
				<form:option value="English"/>
				<form:option value="Français"/>
			</form:select>
		</div>
	</div>
	<div class="span7 well">
		<h2><spring:message code="label.formtitle2"/></h2>
		<div class="span3">
			<form:label path="bio"><spring:message code="label.formattribute6"/></form:label><form:input type="text" path="bio" value=""/>
			<form:label path="picture"><spring:message code="label.formattribute7"/></form:label><form:input type="text" path="picture" value=""/>
		</div>
		<div class="span3">
			<form:label path="website"><spring:message code="label.formattribute8"/></form:label><form:input type="text" path="website" value=""/>
			<form:label path="socialnetwork"><spring:message code="label.formattribute9"/></form:label><form:input type="text" path="socialnetwork" value=""/>
		</div>
	</div>
	<div class="span7 well">
		<div class="btn-group pull-right">
  			<input type="submit" class="btn" value="<spring:message code="label.formbutton1"/>">
  			<a class="btn" href="userProfil.html"><spring:message code="label.formbutton2"/></a>
  			<a class="btn" href="index.html"><spring:message code="label.formbutton3"/></a>
		</div>
		${infosProfil}
	</div>
	</form:form>
</div><!--/span-->