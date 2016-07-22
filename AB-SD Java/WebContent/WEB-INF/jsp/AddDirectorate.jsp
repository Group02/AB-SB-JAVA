<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a new Directorate</title>
<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="../js/AddDirectorate.js"></script>
<link  type="text/css" href="../css/AddOrganisation.css" rel="stylesheet"/>
<link type="text/css" href="../css/style-1.css" rel="stylesheet"/>
</head>
<body>

<div>
	<jsp:include page="menu.jsp" />
</div>
 
<div>
<form:form action="add.html" modelAttribute="he" onsubmit="return addDirForm()"  method="post">
	
	<h1>Business Unit/ Directorate Details</h1>
		<div id="wrapper">
			<div id="tabs">
			<div style="position: absolute; top:70px; left: 600px;" >
				<button >Save</button>
			</div>
			<div style="position: absolute; top:73px; left: 700px;" >
				<a href="<%= request.getContextPath() %>/directorate/list.html" class="bt" style="text-decoration:none">Back</a>
			</div>
				<ul>
					<li class="active">Details</li>
				</ul>
				<div class="content">
					<table>
						<tr>
							<td>BU/Directorate Name *</td>
							<td><form:input id="BUName" path="directorateName" size="24px"/> </td>
							<td>Type of Business *</td>
							<td>
								<form:input id="typeBusiness" path="typeBusiness" class="background" size="17px" readonly="readonly"/>
								<a href="#">Lookup</a>
							</td>
						</tr>
						<tr>
							<td>BU/Directorate Short Description</td>
							<td><form:textarea id="shortDescr" path="shortDescr" cols="30" rows="3"/></td>
							<td>SIC Code</td>
							<td><form:input type="text" id="SICCode" path="SICcode" class="background" size="7px" readonly="readonly"/></td>
						</tr>
						<tr>
							<td>Lead Contact</td>
							<td>
								<form:input type="text" id="leadContact" path="leadContact" class="background" size="17px" readonly="readonly"/>
								<a href="#">Lookup</a>
							</td>
							<td>Organisation Full Description</td>
							<td><form:textarea id="BUFullDescr" path="fullDescr" cols="30" rows="3"/></td>
						</tr>
						<tr>
							<td colspan=2>
								<span>
									<form:input type="checkbox" name="cpAddress" id="cpAddress" path="cpAddr"/>
									<label for="cpAddress" >Copy Address from Organisation</label>
								</span>
							</td>
							<td>Phone Number</td>
							<td><form:input type="text" id="phoneNumber" path="phoneNumber" size="24px"/></td>
						</tr>
						<tr>
							<td>Address*</td>
							<td><form:input type="text" id="address" path="addrLine1" size="24px"/></td>
							<td>Fax</td>
							<td><form:input type="text" id="fax" path="fax" size="24px"/></td>
						</tr>
						<tr>		
							<td>Postcode *</td>	
							<td><form:input type="text" id="postcode" path="postcode" size="16px"/>
							<a href="#">Lookup</a></td>
							<td>Email</td>
							<td><form:input type="text" id="email" path="email" size="24px"/></td>
						</tr>
						<tr>
							<td>Town/Village/City</td>
							<td><form:input type="text" id="town" path="town" size="24px"/></td>
							<td>Web Address</td>
							<td><form:input type="text" id="webAddr" path="webAddress" size="24px"/></td>
						</tr>
						<tr>
							<td>County</td>
							<td><form:input type="text" id="county" path="county" size="24px"/></td>
							<td>Charity Number</td>
							<td><form:input type="text" id="charNum" path="county" size="24px"/></td>
						</tr>
						<tr>
							<td>Nation/Country</td>
							<td>
								<form:select path="nation">
									<option>-- none --</option>
									<option> VietNam </option>
									<option> America </option>
								</form:select>
							</td>
							<td>Company Number</td>
							<td><form:input type="text" id="compNumber" path="compNumber" size="24px"/></td>
						</tr>
					</table>
				</div>
		</div>
		<div id="error" class="error"></div>
	</div>
	
</form:form>
</div>
</body>
</html>