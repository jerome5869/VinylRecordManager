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
		<h1><spring:message code="label.macollection"/></h1>
	</div>
	<div class="span7 well">
		<table  class="table">
			<tr class="table tr">
				<th class="table th"><spring:message code="label.colmatrix"/></th>
				<th class="table th"><spring:message code="label.colalbum"/></th>
				<th class="table th"><spring:message code="label.colartist"/></th>
				<th class="table th"> </th>
			</tr>
			 <c:forEach items="${ownCollection}" var="ownrecord">  
			<tr class="table tr">
				<td class="table td"><c:out value="${ownrecord.record.matrixnumber}"/></td>
				<td class="table td"><c:out value="${ownrecord.record.title}"/></td>
				<td class="table td"><c:out value="${ownrecord.record.artistByArtist.firstname}"/></td>
				<td class="table td"><a href="#"><spring:message code="label.colconsult"/></a></td>
			</tr>
			</c:forEach>
		</table> 
	</div>
	<div class="span7 well">
		<div class="btn-group pull-right">
  			<a class="btn" href="#"><spring:message code="label.ajoutvinyl"/></a>
  			<a class="btn" href="#"><spring:message code="label.ajoutcsv"/></a>
		</div>
	</div>
</div><!--/span-->

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>