<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/List.css">
<link rel="stylesheet" type="text/css" href="../css/main-page.css">
<script type="text/javascript" src="../js/sorttable.js"></script>
<title>Organisation List</title>
</head>
<body class="bg">
	<!-- HEADER -->
	
	<jsp:include page="header.jsp"/>

	<!-- MAIN PAGE -->
	
	<div class="container">
		<div class="main">
			<div class="content">
				<!-- Titile -->
				<h1>Organisation List</h1>
				
				<hr>
				
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
						<a href="<%=request.getContextPath()%>/organisation/create.html" class="btn_1">Create</a>
					</span>
				</div>
				
				<!-- List -->
				<table class="list sortable">
					<tr>
						<th>Orgainsation Name</th>
						<th>Head Office Address Line 1</th>
						<th>Postcode</th>
						<th>Contact</th>
						<th>
							<span>
								<input id="in-active" type="checkbox">
								<label for="in-active"> In Active ?</label>
							</span>
						</th>
					</tr>
					<%
						for (int i = 0; i < 10; i++) {
					%>
							<tr>
								<td><a href="<%=request.getContextPath()%>/organisation/amend.html">Organisation Name <%=i+1%></a>
								<td>218/20 Tran Hung Dao, Ninh Kieu, Can Tho</td>
								<td>SE10 11<%=i%></td>
								<td>Nguyen Van A<%=i%></td>
								<td>Yes</td>
							</tr>
					<%
						}
					%>
					<%
						for (int i = 10; i <= 15; i++) {
					%>
							<tr class="">
								<td><a href="<%=request.getContextPath()%>/organisation/amend.html">Organisation Name <%=i+1%></a>
								<td>218/20 Tran Hung Dao, Ninh Kieu, Can Tho</td>
								<td>SE10 11<%=i%></td>
								<td>Nguyen Van A<%=i%></td>
								<td>No</td>
							</tr>
					<%
						}
					%>
				</table>
				
				<!-- Page -->
				<div align="center" class="page">
					<a href="#previous" class="btn_page">1</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
