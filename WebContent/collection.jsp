<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- header -->
<jsp:include page="HeaderFooter/header.jsp"/>
	
<!-- side menu -->
<jsp:include page="Content/side_menu.jsp"/>
        
<!-- content -->
<div class="span9">
	<div class="well">
		<h1>Collection</h1>
	</div>
	<div class="span7 well">
	<input type="text" name="recherche"></input>
		<div class="btn-group pull-right">
  			<button class="btn">Album</button>
  			<button class="btn">Artiste</button>
  			<button class="btn">Titre</button>
  			<button class="btn">Matrix</button>
		</div>
	</div>
	<div class="span7 well">
		<table  class="table">
			<tr class="table tr">
				<th class="table th">Album</th>
				<th class="table th">Artiste</th>
				<th class="table th">Matrix</th>
				<th class="table th"> </th>
			</tr>
			<tr class="table tr">
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td"><a href="#">consulter</a></td>
			</tr>
			<tr class="table tr">
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td"><a href="#">consulter</a></td>
			</tr>
			<tr class="table tr">
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td"><a href="#">consulter</a></td>
			</tr>
			<tr class="table tr">
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td"><a href="#">consulter</a></td>
			</tr>
			<tr class="table tr">
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td">blabla</td>
				<td class="table td"><a href="#">consulter</a></td>
			</tr>
		</table> 
	</div>
</div><!--/span-->

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>