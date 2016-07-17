<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/address-lookup.css">
<link rel="stylesheet" href="../css/close.css">	
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/close.js"></script>	
		<script type="text/javascript" >
			$(window).load(function() {
			  $('#close').closef($('#close').data());
			});
			
// 			$(document).ready(function() {
// 			    var myRadio = $('input[name=postcode]');
// 			    myRadio.on('change', function () {
// 			        var checkedValue=myRadio.filter(':checked').val();
// 			        if (checkedValue != "undefiined")
// 			        alert(checkedValue);
// 			    });            
// 			});
		</script>
		<title>Postcode</title>
	</head>
	<body>
		<div id="close" class="frame_address">
			<table id="table_search">
				<thead><th colspan=6><a class="close-sign">X</a></th></thead>
				<tbody>
					<tr>
						<td>
							<form:form>
									<fieldset>
									<legend>Search Postcode:</legend>
									<table>
										<tr>
											<td>Postcode:</td>
											<td>
												<%-- 					
											<form:input path="address"/> --%>
											<input type="text">
											</td>
										</tr>
										<tr>
											<td>Street:</td>
											<td><input type="text"></td>
										</tr>
										<tr>
											<td>Town:</td>
											<td><input type="text"></td>
										</tr>
									</table>
								</fieldset>
						</td>
						<td>
							<button type="submit" id="wbutton">
								Search Address
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
						<td></td>
						<td></td>
						</form:form>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td colspan=6>
							<div id="table_address">
								<form:form  modelAttribute="addr" action="lookup.html" method="post">
									<table>
									<thead>
										<tr>
											<th></th>
											<th><div class="wcell1">Address</div></th>
											<th><div class="wcell2">Postcose </div></th>
											<th><div class="wcell2">Town</div></th>
											<th><div class="wcell2">County</div></th>
											<th><div class="wcell2">Country</div> </th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="addr" items="${listAddr }">
										<tr>
											<td><input type="radio" name="addr" value="${addr.address}"> 
												<input type="hidden" name="addr2" value="${addr.postCode }">
											</td>
											<td><div class="wcell1"><c:out value="${addr.address }"></c:out></div></td>
											<td><div class="wcell2"><c:out value="${addr.postCode }"></c:out></div></td>
											<td><div class="wcell2"><c:out value="${addr.town }"></c:out></div> </td>
											<td><div class="wcell2"><c:out value="${addr.county }"></c:out></div></td>
											<td><div class="wcell2"><c:out value="${addr.country }"></c:out></div></td>
										</tr>
									</c:forEach>
									</tbody>
									</table>
		<input type="submit" value="Select">			
							</div>
		<ul id="pagination-clean" class="pagemar" >
		   <li class="previous-off">�Previous</li>
		   <li class="active">1</li>
		   <li><a href="?page=2">2</a></li>
		   <li><a href="?page=3">3</a></li>
		   <li><a href="?page=4">4</a></li>
		   <li><a href="?page=5">5</a></li>
		   <li><a href="?page=6">6</a></li>
		   <li><a href="?page=7">7</a></li>
		   <li class="next"><a href="?page=2">Next �</a></li>
		</ul>
									</form:form>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>