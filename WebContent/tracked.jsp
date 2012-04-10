<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- header -->
<jsp:include page="HeaderFooter/header.jsp"/>
	
<!-- side menu -->
<jsp:include page="Content/side_menu.jsp"/>
        
<!-- content -->
<div class="span9">
	<div class="well">
		<h1>Vinyles suivis</h1>
	</div>
	<div class="span7 well">
		<table  class="table">
			<tr class="table tr">
				<th class="table th">Matrix</th>
				<th class="table th">Album</th>
				<th class="table th">Artiste</th>
				<th class="table th"> </th>
			</tr>
			<c:forEach items="${trackedList}" var="trackedRecord">  
			<tr class="table tr">
				<td class="table td"><c:out value="${trackedRecord.matrixnumber}"/></td>
				<td class="table td"><c:out value="${trackedRecord.title}"/></td>
				<td class="table td"><c:out value="${trackedRecord.artistByArtist.firstname}"/></td>
				<td class="table td"><a href="#">consulter</a></td>
			</tr>
			</c:forEach>
		</table> 
	</div>
</div><!--/span-->

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>