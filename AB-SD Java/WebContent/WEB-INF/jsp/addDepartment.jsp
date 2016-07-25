<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.*"%>
<%@ page import="controller.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type = "text/css" href="../css/team.css" rel = "stylesheet" media = "screen"/>
<link rel="stylesheet" type="text/css" href="../css/style-1.css">
<title>Adding Department</title>
</head>
<body >
	<script>
		if (${checkDept} == "1")
			alert("the typed department is already existed");
	</script>		
	
	 <form:form  modelAttribute="command" action="addDepartment.html" method="post" style="margin:0 auto;" id = "form1">
	      <h1>Department details</h1>
		<div id = "wrapper">
			<div id = "tabs">
				<ul>
					<li class="active">Detail</li>
				</ul>
				<div>
					<table>
						<tr>
							<td>Department Name *</td>
							<td><form:input path="departmentName" size="24px" id = "departmentName" readonly = "${readonly}"/> </td>
							<td>Type of Business</td>
							<td>
							<form:input path="typeOfBusiness" class="background" size="14px" readonly="readonly"/>
							<a href="">Lookup</a>
							</td>
						</tr>
						<tr>
							<td>Department Short Description </td>
							<td>
								<form:textarea path="shortDescription" cols = "30" rows = "3" />
							</td>
							<td><span class="SIC">SIC Code</span></td>
							<td><span class="SIC"><form:input path="sicCode" class="background" size="14px" readonly="readonly" /> </span> </td>
						</tr>
						<tr>
							<td>Lead Contact *</td>
							<td>
								<form:input path="leadContact" class="background" size="16px" readonly="readonly" />
								<a href="ListContact.jsp">Lookup</a>
							</td>
							<td rowspan="3"><span class="Fdes">Department Full Description</span></td>
							<td rowspan=3><span class="Fdes"><form:textarea path="fullDescription" cols = "30" rows = "3"/> </span></td>
						</tr>
						<tr>
							<td>Copy Address from</td>
							<td><input type="radio" value = "Organisation"><span class="radio">Organisation</span> &nbsp; &nbsp; <input type="radio" value = "Parent"><span class="radio">Parent</span> </td>
							<td></td>
	<!-- 						<td></td> -->
						</tr>
						<tr>
							<td></td>
							<td></td>
	<!-- 						<td></td> -->
	<!-- 						<td></td> -->
						</tr>
						<tr>
							<td>
								Address
							</td>
							<td>
								<form:input path="addressLine" size="24px"/>
							</td>
							<td>Phone Number</td>
							<td>
								<form:input path="phoneNumber" size="24px"/>
							</td>
						</tr>
						<tr>
							<td>Postcode</td>
							<td>
								<form:input path="postcode" class="background" size="16px" readonly="readonly"/>
								<a href="ListContact.jsp">Lookup</a>
							</td>
							<td>Fax</td>
							<td><form:input path="fax" size="24px"/> </td>
						</tr>
						<tr>
							<td>Town/Village/City</td>
							<td><form:input path="town" size="24px"/> </td>
							<td>Email</td>
							<td><form:input path="email" size="24px"/> </td>
						</tr>
						<tr>
							<td>County</td>
							<td><form:input path="county" size="24px"/> </td>
							<td>Web Address</td>
							<td><form:input path="webAddress" size="24px"/> </td>
						</tr>
						<tr>
							<td>Nation/Country</td>
							<td>
								<form:select path="nation">
									<option>-- none --</option>
									<option>-- Viet Nam --</option>
									<option>-- America --</option>
								</form:select>
							</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td>
								<button onclick="save()">Save</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href = "<%= request.getContextPath()%>/web/index.html"><button type="button" >Back</button></a>
							</td>
						</tr>
						
					</table>
				</div>
			</div>
		</div>
	</form:form>
	
	<script>
		function save(){
		    name = document.getElementById('departmentName').value;
		    document.getElementById('form1').submit();
		}
	</script>
</body>
</html>