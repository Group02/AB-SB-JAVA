<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="../css/business-lookup.css">
		<link rel="stylesheet" href="../css/close.css">
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
		<script type="text/javascript" src="../js/close.js"></script>	
		<script type="text/javascript" >
			$(window).load(function() {
			  $('#close').closef($('#close').data());
			});
		</script>
		<script>
		function changeParent() { 
			var x= document.getElementById("business").value;  
			window.opener.document.getElementById('dd').value = x;
			  window.close();
			} 
		</script>
<title>Business Type</title>
</head>
<body>
	<div  > 
		<table class="frame_business">
			<thead><tr><th colspan=6 class="header"><a class="close-sign">X</a></th></tr></thead>
			<tbody>
				<tr>
					<td>
						<div style="">
							<fieldset style="width: 220px">
								<legend>Search Business</legend>
								<table id="table_search">
							<form:form>
							<tr>
								<td>
									<div style="width: 120px">Business Name:</div>
								</td>
								<td>
									<div class="search"><input type="text"></div>
								</td>
							</tr>
							<tr>
								<td>
									SIC Code:
								</td>
								<td>
									<div class="search"><input type="text"></div>
								</td>
							</tr>
							</form:form>
						</table>
							</fieldset>
						</div>
					</td>
					<td colspan="3">
						<input type="submit" value="Search" id="wbutton" class="mbutton"> <br>
						<input type="submit" value="None" id="wbutton" class="mbutton">
					</td>
				</tr>
				<tr>
					<td id="bo"></td>
					<td id="bo"></td>
					<td id="bo"></td>
					<td id="bo"></td>
				</tr>
				<tr>
					<td colspan=5>
						<table id="table_business">
							<thead>
								<tr>
									<th></th>
									<th><div class="wcell1">Business Name</div></th>
									<th><div class="wcell2">SIC Code</div></th>
								</tr>
							</thead>
							<tbody class="tbl_body">
								<c:forEach var="busi" items="${listBusi }">
									<tr>
										<td>
											<input type="radio" id="business" value="${busi.SIC_Code }"> 
										</td>
										<td>${busi.businessName}</td>
										<td>${busi.SIC_Code } </td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<input type="submit" value="Select">
					</td>
				</tr>
			</tbody>		
		</table>
	</div>
</body>
</html>