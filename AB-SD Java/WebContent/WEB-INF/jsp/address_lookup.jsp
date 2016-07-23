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
			<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
			<script type="text/javascript" src="../js/close.js"></script>	
			<script type="text/javascript" >
				$(window).load(function() {
				  $('#close').closef($('#close').data());
				});
			</script>
		<title>Postcode</title>
	</head>
	<body>
		<div id="close" class="frame_address_main">
			<table id="table_search">
				<thead><tr><th colspan=6><a class="close-sign" id="header">X</a></th></tr> </thead>
				<tbody>
					<tr>
						<td>
							<table>
								<tbody>
									<form:form>
										<tr>
											<td>
												<div style="width: 380px;">
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
												</div>
											</td>
											<td colspan="5">
												<input type="submit" id="wbutton" value="Search">
												<br>
												<input type="submit" id="wbutton" value="None">
											</td>
										</tr>
									</form:form>
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<form:form   action="addresslookup.html" method="post">
					<tr>
						<td colspan=6>
							<div id="table_address">
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
									<tbody class="body">
									<c:forEach var="addr" items="${listAddr }">
										<tr>
											<td>
												<input type="radio" name="addr" value="${addr.postCode}"> 
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
						</td>
					</tr>
					</form:form>
				</tbody>
			</table>
		</div>
	</body>
</html>