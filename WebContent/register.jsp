<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- header -->
<jsp:include page="HeaderFooter/header.jsp"/>
	
<!-- side menu -->
<jsp:include page="Content/side_menu.jsp"/>
        
<!-- content -->
<div class="span9">
	<div class="well">
		<h1><spring:message code="label.register1"/></h1>
		<p><spring:message code="label.txtregister"/></p>
	</div>
	<form:form action="ajoutUser.html" modelAttribute="userForm" method="post">
	<div class="span7 well">
		<h2><spring:message code="label.formtitle1"/></h2>
		<div class="span3">
			<form:label path="username"><spring:message code="label.formattribute1"/></form:label><form:input type="text" path="username"/>
			<form:label path="lastname"><spring:message code="label.formattribute2"/></form:label><form:input type="text" path="lastname"/>
			<form:label path="firstname"><spring:message code="label.formattribute3"/></form:label><form:input type="text" path="firstname"/>
			<form:label path="language"><spring:message code="label.formattribute5"/></form:label>
			<form:select path="language" size="1">
				<form:option value="English"/>
				<form:option value="Français"/>
			</form:select>
		</div>
		<div class="span3">
			<form:label path="mail"><spring:message code="label.formattribute4"/></form:label><form:input type="text" path="mail"/>
			<form:label path="password"><spring:message code="label.password"/></form:label><form:input type="password" path="password"/>
			<form:label path="password1"><spring:message code="label.password1"/></form:label><form:input type="password" path="password1"/>
			${errorPassword}
		</div>
	</div>
	<div class="span7 well">
		<h2><spring:message code="label.formtitle2"/></h2>
		<div class="span3">
			<form:label path="bio"><spring:message code="label.formattribute6"/></form:label><form:input type="text" path="bio"/>
			<form:label path="picture"><spring:message code="label.formattribute7"/></form:label><form:input type="text" path="picture"/>
		</div>
		<div class="span3">
			<form:label path="website"><spring:message code="label.formattribute8"/></form:label><form:input type="text" path="website"/>
			<form:label path="socialnetwork"><spring:message code="label.formattribute9"/></form:label><form:input type="text" path="socialnetwork"/>
		</div>
	</div>
	<div class="span7 well">
		<div class="btn-toolbar pull-right">
			<div class="btn-group">
				<a class="btn" href="userLogin.html"><spring:message code="label.formbutton4"/> &raquo;</a>
			</div>
			<div class="btn-group">
  				<input type="submit" class="btn" value="<spring:message code="label.formbutton5"/>">
  				<a class="btn" href="index.jsp"><spring:message code="label.accueil"/></a>
			</div>
		</div>
		${errorEmptyfield}
	</div>
	</form:form>
</div><!--/span-->

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>