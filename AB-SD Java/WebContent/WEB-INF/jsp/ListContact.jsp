<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/contact.css">
</head>
<body>
	<!-- Popup -->
	<div id="popup-address" class="model">
	
		<!-- Popup content -->
		<div class="model-content">
			<table class="frame_contact">
				<thead>
					<tr>
						<th colspan="6" class="header">
							<div align="right" style="padding-right: 10px">
								<span id="close" class="close" onclick="closePopup('popup-address')">X</span>
							</div>
						</th>
					</tr>
				</thead>
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
											<button type="button" id="button" ><img id="img" src="../image/search.png"></button>
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
					<form:form >
					<tr><td colspan=6><div><input type="checkbox">Include in-active contact? </div></td></tr>
					<tr>
						<td colspan=6>
							<table class="list">
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
	</div>
</body>
</html>