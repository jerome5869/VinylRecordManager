<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="span3">
	<div class="well sidebar-nav">
		<ul class="nav nav-list">
			<li class="nav-header"><spring:message code="label.communaute"/></li>
			<li><a href="collection.html"><spring:message code="label.gcollection"/> &raquo;</a></li>
         		<%	if(session.getAttribute("nom") != null) {%>
         			
         			<li class='nav-header'><spring:message code="label.biblio"/></li>
         			<li><a href='ownCollection.html'><spring:message code="label.macollection"/> &raquo;</a></li>
         			<li><a href='trackedList.html'><spring:message code="label.vinyltracked"/> &raquo;</a></li>
         			<li class='nav-header'><spring:message code="label.playlists"/></li>
         			 <c:forEach items="${sessionScope.playlists}" var="playlist">
         			 	<li><a href="playlist.html?id=${playlist.idPlaylist}"><c:out value="${playlist.name}"/> &raquo;</a></li>  
         			 </c:forEach>
         			<li><a href='#'><spring:message code="label.newplaylist"/> &raquo;</a></li>
         		<%}
         		else {%>
         			<li class='nav-header'><spring:message code="label.biblio"/></li>
         			<li><a href='userLogin.html'><spring:message code="label.macollection"/> <spring:message code="label.reqconnexion"/></a></li>
         			<li><a href='userLogin.html'><spring:message code="label.vinyltracked"/> <spring:message code="label.reqconnexion"/></a></li>
         			<li class='nav-header'><spring:message code="label.playlists"/></li>
         			<li><a href='userLogin.html'><spring:message code="label.newplaylist"/> <spring:message code="label.reqconnexion"/></a></li>
         		<%}%>
		</ul>
	</div><!--/.well -->
</div><!--/span-->