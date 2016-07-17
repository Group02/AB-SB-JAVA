<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/bap[tam].css">
<title>Business Type</title>
</head>
<body>
	<form action="" method="get">
		<table>
			<tr>
				<td>
					<fieldset>
						  	<legend>Search Postcode:</legend>
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
					<button type="submit" style="width:80px">Search</button><br>
					<button type="submit" style="width:80px">Clear</button>
				</td>
			</tr>
		</table>
	</form>
	<form action="">
		<table id="table_business">
			<thead>
				<tr>
					<th></th>
					<th>Business Name</th>
					<th>SIC Code</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="radio"></td>
					<td>thai binh duong</td>
					<td>dad555</td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</form>
	<form action="">
		<table id="tableb">
		<tr>
					<td><button type="submit">None</button></td>
					<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
					<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
					<td>
						 <a href="#">first</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>
        <a href="#">last</a>
					</td>
		</tr>
		</table>
	</form>
</body>
</html>