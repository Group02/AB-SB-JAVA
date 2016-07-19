<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Contact</title>
</head>
<body>
	<div style="border:1px solid teal; width:500px; margin: auto">
		<table>
			<thead></thead>
			<tbody>
				<tr>
					<td>First Name:</td>
					<td><button type="button">Search Contact</button></td>
				</tr>
				<tr>
					<td><input type="text"></td>
					<td><button type="button">Clear</button></td>
				</tr>
				<tr>
					<td>Surname:</td>
					<td><button type="button">None</button></td>
				</tr>
				<tr>
					<td><input type="text"> </td>
					<td><button type="button">Create</button></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><div><input type="checkbox">Include in-active contact? </div></td>
				</tr>
				<form:form>
				<tr>
					<td colspan=6>
						<table style="border: 1px solid steelblue;">
							<thead>
								<tr>
									<th></th>
									<th>Contact Name</th>
									<th>Mobile Phone</th>
									<th>Email</th>
									<th>Contact Type</th>
									<th>Is active?</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
						<button type="submit">Select</button>
					</td>
				</tr>
				</form:form>
			</tbody>
		</table>
	</div>
</body>
</html>