<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/Details.css">
</head>
<body>
	<div id="tab4" class="tabcontent">
		<div>
			<fieldset>
				<legend>Premise</legend>
				<table class="list">
					<tr>
						<th>Premise Name</th>
						<th>Address</th>
						<th>Primary Location</th>
						<th>Phone Number</th>
					</tr>
					<%
						for (int i = 0; i < 5; i++) {
					%>
							<tr>
								<td>Premise <%=i + 1%></td>
								<td>Address Premise <%=i + 1%></td>
								<td>Primary Location <%=i + 1%></td>
								<td>091 333 66<%=i + 1%></td>
							</tr>
					<%
						}
					%>
				</table>
			</fieldset>
		</div>
		
		<div style="margin-top: 10px;">
			<fieldset>
				<legend>Located In</legend>
				<table width="100%">
					<tr>
						<td>Ward:</td>
						<td style="padding-right: 10px;"><input type="text" disabled="disabled"/></td>
						<td>NHS Authority:</td>
						<td><input type="text" disabled="disabled"/></td>
					</tr>
					<tr>
						<td>Borough:</td>
						<td style="padding-right: 10px;"><input type="text" disabled="disabled"/></td>
						<td>Gov't Office Region:</td>
						<td>
							<select>
								<option>Gov Off 1</option>
								<option>Gov Off 2</option>
								<option>Gov Off 3</option>
								<option>Gov Off 4</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Local Authority:</td>
						<td style="padding-right: 10px;"><input type="text" disabled="disabled"/></td>
						<td>Trust Region:</td>
						<td>
							<select>
								<option>Scotland</option>
								<option>England</option>
								<option>United States</option>
								<option>France</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Unitary Authority:</td>
						<td style="padding-right: 10px;"><input type="text" disabled="disabled"/></td>
						<td>Trust District:</td>
						<td>
							<select>
								<option>California</option>
								<option>Lancashire</option>
							</select>
						</td>
					</tr>
				</table>
			</fieldset>
		</div>
	</div>
</body>
</html>