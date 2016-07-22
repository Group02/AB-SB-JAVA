<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<link rel="stylesheet" type="text/css" href="../css/style-2.css">
<title></title>
</head>
<body>
	<div class="page-header">
		<% 
			String onBuildingPage = request.getContextPath() + "/menu/building.html";
			String path = request.getContextPath();
		%>
		<div>
			<ul class="menu">
				<li class="dropdown">
					<a href="<%=path%>/organisation/list.html" class="dropbtn">Organisation</a>
					<div class="dropdown-content">
						<a href="<%=onBuildingPage%>">Supporting Materials Maintenance</a> 
						<a href="<%=onBuildingPage%>">Directorate Maintenance</a> 
						<a href="<%=onBuildingPage%>">Department Maintenance</a> 
						<a href="<%=onBuildingPage%>">Team Maintenance</a>
					</div></li>
				<li class="dropdown">
					<a href="<%=onBuildingPage%>" class="dropbtn">Services</a>
					<div class="dropdown-content">
						<a href="<%=onBuildingPage%>">Programme</a>
					</div></li>
				<li class="dropdown">
					<a href="<%=onBuildingPage%>" class="dropbtn">Geography</a>
					<div class="dropdown-content">
						<a href="<%=onBuildingPage%>">Trust Region Maintenance</a> 
						<a href="<%=onBuildingPage%>">Trust District Maintenance</a> 
						<a href="<%=onBuildingPage%>">Government Office Region</a>
					</div></li>
				<li><a href="<%=onBuildingPage%>">Premises</a></li>
				<li><a href="<%=onBuildingPage%>">Contacts</a></li>
				<li style="float: right;">
					<%
						if (session.getAttribute("User") == null) {
					%> 
							<a href="<%=path%>/login/index.html">Login</a> 
					<%
						} else {
					%> 
							<a href="<%=path%>/login/logout.html">Logout</a> 
					<%
					 	}
					%> 
				</li>
			</ul>
		</div>
	</div>
</body>
</html>