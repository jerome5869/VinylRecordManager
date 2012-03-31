<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  	
<!-- header -->
<jsp:include page="HeaderFooter/header.jsp"/>
	
<!-- side menu -->
<jsp:include page="Content/side_menu.jsp"/>
        
<!-- content -->
<%	if(session.getAttribute("nom") != null) {%><jsp:include page="Content/index_user.jsp"/> <%}
	else {%><jsp:include page="Content/index_guest.jsp"/> <%}%>

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>