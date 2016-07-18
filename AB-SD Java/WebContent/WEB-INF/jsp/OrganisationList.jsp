<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/style-1.css">
<link rel="stylesheet" type="text/css" href="../css/list.css">
<title>Organisation List</title>
</head>
<body class="bg">
	<jsp:include page="menu.jsp" />
	<div class="container box-shadow">
		<!-- Titile -->
		<h1>Organisation List</h1>
		
		<!-- Sort & Create-->
		<div class="sort">
			<span><a href="">All</a></span> |
			<span><a href="">0 - 9</a></span> |
			<span><a href="">A B C D E</a></span> |
			<span><a href="">F G H I J</a></span> |
			<span><a href="">K L M N</a></span> |
			<span><a href="">O P Q R</a></span> |
			<span><a href="">S T U V</a></span> |
			<span><a href="">W X Y Z</a></span>
			<span style="float: right;">
				<a href="" class="btn_1">Create</a>
			</span>
		</div>
		
		<!-- List -->
		<div class="list">
			<table>
				<tr>
					<th class="header-background">Orgainsation Name</th>
					<th class="header-background">Head Office Address Line 1</th>
					<th class="header-background">Postcode</th>
					<th class="header-background">Contact</th>
					<th class="header-background">
						<span>
							<input id="in-active" type="checkbox">
							<label for="in-active"> In Active ?</label>
						</span>
					</th>
				</tr>
				<%
					for (int i = 0; i < 15; i++) {
				%>
						<tr>
							<td><%=i + 1%></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
				<%
					}
				%>
			</table>
		</div>
		
		<!-- Page -->
		<div align="center" class="page">
			<a href="#previous" class="btn_page">1</a>
			<a href="#previous" class="btn_page">2</a>
		</div>
	</div>
</body>
</html>