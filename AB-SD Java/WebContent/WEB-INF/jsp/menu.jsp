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
		<ul class="menu">
			<li><a class="active" href="#home">AB-SD</a></li>
			<li class="dropdown">
				<a href="<%=request.getContextPath()%>/organisation/list.html" class="dropbtn">Organisation</a>
				<div class="dropdown-content">
					<a href="<%=request.getContextPath()%>/menu/building.html">Supporting Materials Maintenance</a> 
					<a href="<%=request.getContextPath()%>/menu/building.html">Directorate Maintenance</a> 
					<a href="<%=request.getContextPath()%>/menu/building.html">Department Maintenance</a> 
					<a href="<%=request.getContextPath()%>/menu/building.html">Team Maintenance</a>
				</div></li>
			<li class="dropdown">
				<a href="<%=request.getContextPath()%>/menu/building.html" class="dropbtn">Services</a>
				<div class="dropdown-content">
					<a href="<%=request.getContextPath()%>/menu/building.html">Programme</a>
				</div></li>
			<li class="dropdown">
				<a href="<%=request.getContextPath()%>/menu/building.html" class="dropbtn">Geography</a>
				<div class="dropdown-content">
					<a href="<%=request.getContextPath()%>/menu/building.html">Trust Region Maintenance</a> 
					<a href="<%=request.getContextPath()%>/menu/building.html">Trust District Maintenance</a> 
					<a href="<%=request.getContextPath()%>/menu/building.html">Government Office Region</a>
				</div></li>
			<li><a href="<%=request.getContextPath()%>/menu/building.html">Premises</a></li>
			<li><a href="<%=request.getContextPath()%>/menu/building.html">Contacts</a></li>
			<li style="float: right;">
				<%
					if (session.getAttribute("User") == null) {
				%> 
						<a href="index.html">Login</a> 
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