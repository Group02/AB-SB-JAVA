<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- 		<link rel="stylesheet" href="../css/business-lookup.css"> -->
<title>Business Type</title>
</head>
<body>
	<div   id="businessModal" class="businessModal"> 
		<div class="businessContent">
			<table class="frame_business">
			<thead><tr><th colspan=4 class="header"><span class="close3">×</span></th></tr></thead>
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
									<div class="searchb"><input type="text"></div>
								</td>
							</tr>
							<tr>
								<td>
									SIC Code:
								</td>
								<td>
									<div class="searchb"><input type="text"></div>
								</td>
							</tr>
							</form:form>
						</table>
							</fieldset>
						</div>
					</td>
					<td colspan="3">
						<input type="submit" value="Search" id="buttonb" class="buttonb"> <br>
						<input type="submit" value="None" id="buttonb" class="buttonb">
					</td>
				</tr>
				<tr>
					<td id="bo"></td>
					<td id="bo"></td>
					<td id="bo"></td>
					<td id="bo"></td>
				</tr>
				<tr>
					<td colspan=4>
						<table id="table_business">
							<thead>
								<tr>
									<th></th>
									<th><div class="wcell5">Business Name</div></th>
									<th><div class="wcell6">SIC Code</div></th>
								</tr>
							</thead>
							<tbody >
								<c:forEach var="busi" items="${listBusi }">
									<tr>
										<td>
											<input type="radio" name="sic" value="${busi.SIC_Code }?${busi.businessName}"> 
										</td>
										<td>${busi.businessName}</td>
										<td>${busi.SIC_Code } </td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<input type="submit" value="Select" onclick="selectbusi()">
					</td>
				</tr>
			</tbody>		
			</table>
			<script type="text/javascript">
				function selectbusi(){
					if(document.querySelector('input[name="sic"]:checked').value != ""){
						var x = document.querySelector('input[name="sic"]:checked').value;
						var part = x.split("?");
						document.getElementById("sic").value = part[0];
						document.getElementById("typebusi").value = part[1];
						businessModal.style.display = "none";
					}
				}
			</script>
		</div>
	</div>
</body>
</html>