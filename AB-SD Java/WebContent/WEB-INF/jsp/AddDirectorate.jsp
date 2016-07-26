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
</head>
<body class="bg">

<!-- HEADER -->
	
	<jsp:include page="header.jsp"></jsp:include>

	<!-- MAIN PAGE -->
	
	<div class="container">
		<div class="main">
			<div class="content">
				<!-- Titile -->
				<h1>Business Unit/ Directorate Details</h1>
				
				<hr>
				
				<!-- Form -->
				<form:form action="add.html" modelAttribute="he" onsubmit="return addDirForm()"  method="post">
					<!-- Tab Name -->
					<div class="tab_head">
						<ul class="tab">
							<li><a href="#" class="tablinks active"
								onclick="openTab(event, 'tab1')">Details</a></li>
						</ul>

						<!-- Operation -->
						<input type="button" value="Back" class="btn_opt" onclick="">
						<input type="submit" value="Save" class="btn_opt">
					</div>
					
					<!-- "Details" content -->
					<div id="tab1" class="tabcontent" style="display: block;">
						<table class="tb_dir">
							<tr>
								<td>BU/Directorate Name *</td>
								<td><form:input id="BUName" path="directorateName" size="24px"/> </td>
								<td>Type of Business *</td>
								<td>
									<form:input id="typeBusiness" path="typeBusiness" disabled="true" style="width: 60%;"/>
									<a href="#" id="business">Lookup</a>
								</td>
							</tr>
							<tr>
								<td>BU/Directorate Short Description</td>
								<td><form:textarea id="shortDescr" path="shortDescr" cols="30" rows="3"/></td>
								<td>SIC Code</td>
								<td><form:input id="SICCode" path="SICcode" disabled="true" style="width: 60%;"/></td>
							</tr>
							<tr>
								<td>Lead Contact</td>
								<td>
									<form:input id="leadContact" path="leadContact" disabled="true" style="width: 60%;"/>
									<a href="#" id="contact">Lookup</a>
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
								<td><form:input id="postcode" path="postcode"  style="width: 60%;"/>
								<a href="#" id="myBtn">Lookup</a>
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
				</form:form>
				
				<!-- Error -->
				<div id="error" class="error"></div>
			</div>
		</div>
	</div>
</div>
</body>
</html>