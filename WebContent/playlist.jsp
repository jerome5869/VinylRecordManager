<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- header -->
<jsp:include page="HeaderFooter/header.jsp"/>
	
<!-- side menu -->
<jsp:include page="Content/side_menu.jsp"/>
        
<!-- content -->
<div class="span9">
	<div class="well">
		<h1>Playlist 1</h1>
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
	<div class="span7 well">
		<h2>Utilisateurs de cette playlist</h2>
		<p>Machin, Truc, Bidule</p>
		<input type="text" name="util"></input>
		<div class="btn-group pull-right">
  			<a class="btn" href="#">Ajouter un Utilisateur</a>
		</div>
	</div>
</div><!--/span-->

<!-- footer -->
<jsp:include page="HeaderFooter/footer.jsp"/>