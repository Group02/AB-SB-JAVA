<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Contact</title>
</head>
<body>
	<div id="contactModal" class="contactModal">
		<div class="contactContent">
			<table >
			<thead ><tr><th colspan=6 class="header"><span class="close2">×</span></th></tr></thead>
			<tbody>
				<tr>
				<td>
					<table class="table_search">
						<tbody>
							<tr>
								<td>Contact Name:</td>
								<td colspan=5> 
									<div class="search">
										<input type="text" placeholder="Search">
										<button type="button" id="button" ><img id="imgsearch" alt="" src="../image/search.png"></button>
										<button id="buttoni">Edit</button>
										<button type="button" id="buttoni">Create</button>
										<button type="button" id="buttoni">None</button>
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
				<tr>
					<td colspan=6>
						<table id="table_contact">
							<thead>
								<tr>
									<th></th>
									<th><div class="wcell3">Contact Name</div> </th>
									<th><div class="wcell4">Mobile Phone</div></th>
									<th><div class="wcell4">Email</div></th>
									<th><div class="wcell4">Contact Type</div> </th>
									<th>
										<div class="wcell4">
											<span>
												<input id="in-active" type="checkbox">
												<label for="in-active"> In Active ?</label>
											</span>
										</div>
									</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="cont" items="${listCont }">
									<tr>
									<td><input type="radio" name="cont" value="${cont.firstName}"></td>
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
						<button type="submit" id="wbutton" onclick="selectcont()">Select</button>
					</td>
				</tr>
			</tbody>
		</table>
		<script type="text/javascript">
				function selectcont(){
					if(document.querySelector('input[name="cont"]:checked').value != ""){
						document.getElementById("leadcont").value = document.querySelector('input[name="cont"]:checked').value;
						contactModal.style.display = "none";
					}
				}
		</script>
		</div>
	</div>
</body>
</html>