<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- header -->
<jsp:include page="HeaderFooter/header.jsp"/>
	
<!-- side menu -->
<jsp:include page="Content/side_menu.jsp"/>
        
<!-- content -->
<div class="span9">
	<div class="well">
		<h1>${playlist.name}</h1>
	</div>
	<div class="span7 well">
		<table  class="table">
			<tr class="table tr">
				<th class="table th">Matrix</th>
				<th class="table th">Album</th>
				<th class="table th">Artiste</th>
				<th class="table th"> </th>
			</tr>
			 <c:forEach items="${playlist.records}" var="record">  
			<tr class="table tr">
				<td class="table td"><c:out value="${record.matrixnumber}"/></td>
				<td class="table td"><c:out value="${record.title}"/></td>
				<td class="table td"><c:out value="${record.artistByArtist.firstname}"/></td>
				<td class="table td"><a href="#">consulter</a></td>
			</tr>
			</c:forEach>
		</table> 
	</div>
	<div class="span7 well">
		 <c:forEach items="${playlist.authenticatedUsers}" var="user">  
		<h2>Utilisateurs de cette playlist</h2>
		<p><c:out value="${user.firstname}"/></p>
		</c:forEach>
		<input type="text" name="util"></input>
		<div class="btn-group pull-right">
  			<a class="btn" href="#">Ajouter un Utilisateur</a>
		</div>
	</div>
</div><!--/span-->

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>