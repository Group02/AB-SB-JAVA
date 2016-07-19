<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/contact.css">
<link rel="stylesheet" href="../css/close.css">	
			<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
			<script type="text/javascript" src="../js/close.js"></script>	
			<script type="text/javascript" >
					$(window).load(function() { 
				  $('#close').closef($('#close').data()); 
				});
			</script> 
<title>List Contact</title>
</head>
<body>
	<div >
		<table class="frame_contact">
			<thead ><tr><th colspan=6 class="header"><a class="close-sign">X</a></th></tr></thead>
			<tbody>
				<tr>
				<td>
					<table id="table_search">
						<tbody>
							<tr>
								<td>Contact Name:</td>
								<td colspan=5> 
									<div class="search">
										<input type="text" placeholder="Search">
										<button type="button" id="button" ><img id="img" alt="" src="../image/search.png"></button>
										<button id="wbutton">Edit</button>
										<button type="button" id="wbutton">Create</button>
										<button type="button" id="wbutton">None</button>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</td>			
			</tr>
				<tr>
					<td id="bo"></td>
					<td id="bo"></td>
					<td id="bo"></td>
					<td id="bo"></td>
					<td id="bo"></td>
					<td id="bo"></td>
				</tr>
				<form:form >
				<tr><td colspan=6><div><input type="checkbox">Include in-active contact? </div></td></tr>
				<tr>
					<td colspan=6>
						<table id="table_contact">
							<thead>
								<tr>
									<th></th>
									<th><div class="wcell1">Contact Name</div> </th>
									<th><div class="wcell2">Mobile Phone</div></th>
									<th><div class="wcell2">Email</div></th>
									<th><div class="wcell2">Contact Type</div> </th>
									<th><div class="wcell2">Is active?</div></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="cont" items="${listCont }">
									<tr>
									<td><input type="radio" id="cont" value="${cont.surname}"></td>
									<td>
										<span>${cont.surname}</span> ${cont.firstName}</td>
									<td>${cont.mobilePhone }</td>
									<td>${cont.email }</td>
									<td></td>
									<td><c:out value=""></c:out></td>
									<td><c:out value=""></c:out></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<button type="button" id="wbutton">Select</button>
					</td>
				</tr>
				</form:form>
			</tbody>
		</table>
	</div>
</body>
</html>