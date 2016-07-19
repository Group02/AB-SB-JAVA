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
	<div id="close" class="frame_business"> 
		<table id="table_search">
				<thead><tr><th colspan=3><a class="close-sign">X</a></th></tr></thead>
				<tbody>
					<form:form>
					<tr>
						<td style="width:420px">
								<fieldset>
									<legend>Search Business</legend>
									<table>
										<tr>
											<td>Business Name:</td>
											<td><input type="text"></td>
										</tr>
										<tr>
											<td>SIC Code:</td>
											<td><input type="text"></td>
										</tr>
									</table>
								</fieldset>
						</td>
						<td>
								<button type="submit" id="wbutton">
									Search
								</button>
								<br>
								<button type="reset" id="wbutton">
									Clear
								</button>
								<br>
								<button type="submit" id="wbutton">
									None
								</button>
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					</form:form>
					<form:form  method="post">
					<tr>
						<td colspan=4>
							<div id="table_business">
										<table>
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
														<td><c:out value="${busi.businessName}"></c:out></td>
														<td><c:out value="${busi.SIC_Code }"></c:out> </td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<input type="button" id="select" value="Select" onclick="changeParent()">			
									<ul id="pagination-clean" class="pagemar" >
									   <li class="previous-off">«Previous</li>
									   <li class="active">1</li>
									   <li><a href="?page=2">2</a></li>
									   <li><a href="?page=3">3</a></li>
									   <li><a href="?page=4">4</a></li>
									   <li><a href="?page=5">5</a></li>
									   <li><a href="?page=6">6</a></li>
									   <li><a href="?page=7">7</a></li>
									   <li class="next"><a href="?page=2">Next »</a></li>
									</ul>
						</td>
					</tr>
					</form:form>
				</tbody>
			</table>
	</div>
</body>
</html>