<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<link rel="stylesheet" type="text/css" href="../css/style-1.css">
<title></title>
</head>
<body>
	<div class="box-shadow">
		<ul>
			<li><a class="active" href="#home">AB-SD</a></li>
			<li class="dropdown"><a href="#" class="dropbtn">Organisation</a>
				<div class="dropdown-content">
					<a href="#">Supporting Materials Maintenance</a> <a href="#">Directorate
						Maintenance</a> <a href="#">Department Maintenance</a> <a href="#">Team
						Maintenance</a>
				</div></li>
			<li class="dropdown"><a href="#" class="dropbtn">Services</a>
				<div class="dropdown-content">
					<a href="#">Programme</a>
				</div></li>
			<li class="dropdown"><a href="#" class="dropbtn">Geography</a>
				<div class="dropdown-content">
					<a href="#">Trust Region Maintenance</a> <a href="#">Trust
						District Maintenance</a> <a href="#">Government Office Region</a>
				</div></li>
			<li><a href="#news">Premises</a></li>
			<li><a href="#news">Contacts</a></li>
			<li style="float: right;">
				<%
					if (session.getAttribute("User") == null) {
				%> 
						<a href="#login">Login</a> 
				<%
					} else {
				%> 
						<a href="logout.html">Logout</a> 
				<%
				 	}
				%> 
			</li>
		</ul>
	</div>
</body>
</html>