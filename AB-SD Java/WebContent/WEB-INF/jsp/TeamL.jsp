<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/style-1.css">
<link rel="stylesheet" type="text/css" href="../css/list.css">
<title>Team List</title>
</head>
<body class="bg">
	<div class="container box-shadow">
		<!-- Titile -->
		<h1>Team List</h1>
		
		<!-- Sort & Create-->
		<div class="sort">
			<span><a href="filter.html?search=ALL">All</a></span> |
			<span><a href="filter.html?search=0 9">0 - 9</a></span> |
			<span><a href="filter.html?search=A E">A B C D E</a></span> |
			<span><a href="filter.html?search=F J">F G H I J</a></span> |
			<span><a href="filter.html?search=K N">K L M N</a></span> |
			<span><a href="filter.html?search=O R">O P Q R</a></span> |
			<span><a href="filter.html?search=S V">>S T U V</a></span> |
			<span><a href="filter.html?search=W Z">W X Y Z</a></span>
			<span style="float: right;">
				<a href="teamadd.html" class="btn_1">Create</a>
			</span>
			<span style="float: right;">
				<a href="#" class="btn_1">In-active</a>
			</span>
		</div>
		
		<!-- List -->
		<div class="list">
			<table>
				<tr>
					<th class="header-background">Team Name</th>
					<th class="header-background">Address Line 1</th>
					<th class="header-background">Postcode</th>
					<th class="header-background">Contact</th>
					<th class="header-background">
						<span>
							<input id="in-active" type="checkbox" onclick="getall()">
							<label for="in-active"> In Active ?</label>
						</span>
						<script type="text/javascript">
							function getall(){
								var x = document.getElementsByClassName("in-acticehide");
								
								if (document.getElementById("in-active").checked) {
									for(var i=0;i<x.length;i++) {
										x[i].style.display = "table-row";
									} 
								} else {
									for(var i=0;i<x.length;i++) {
										x[i].style.display = "none";
									} 
								}					
								
							}
							
							function active(){
								var x = confirm("Do you want to make this Team active?");
								
								if(x==true) return true;
								else return false;
							}
						</script>
					</th>
				</tr>
				<c:forEach var="team" items="${listTeam }">
					<c:choose>
						<c:when test="${team.status == true}">
							<tr>
							<td>
								<c:set var="url">
									<c:url value="teammo.html">
										<c:param name="teamName" value="${team.teamName }" ></c:param>
									</c:url>
								</c:set>
								<a href="${url}" >${team.teamName }</a>
							</td>
							<td>${team.address }</td>
							<td>${team.postCode }</td>
							<td>${team.leadContact }</td>
							<td>
								Yes 
							</td>
							</tr>	
						</c:when>
						<c:otherwise>
							<tr class="in-acticehide">
							<td>
								<a href="teamlist2.html?teamName=${team.teamName }" onclick="return active()" >${team.teamName }</a>
								<input id="${team.teamName }" value="${team.teamName }" type="hidden">
							</td>
							<td>${team.address }</td>
							<td>${team.postCode }</td>
							<td>${team.leadContact }</td>
							<td>
								No
							</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</c:forEach>
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