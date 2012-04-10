<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  	
<!-- header -->
<jsp:include page="HeaderFooter/header.jsp"/>
	
<!-- side menu -->
<jsp:include page="Content/side_menu.jsp"/>
        
<!-- content -->
<%	if(session.getAttribute("nom") != null) {%><jsp:include page="Content/index_user.jsp"/> <%}
	else {%><jsp:include page="Content/index_guest.jsp"/> <%}%>

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>