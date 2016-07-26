<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add a new Organisation</title>
	<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="../js/AddOrganisation.js"></script>
	<script type="text/javascript" src="../js/details.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/address.css">
	<link rel="stylesheet" type="text/css" href="../css/lookup.css">
	<link rel="stylesheet" type="text/css" href="../css/General.css">
</head>
<body class="bg">

	<!-- HEADER -->
	
	<jsp:include page="header.jsp"/>

	<!-- MAIN PAGE -->
	
	<div class="container">
		<div class="main">
			<div class="content">
			
				<!-- Titile -->
				<h1>Business Unit/ Directorate Details</h1>
				
				<hr>
				
				<!-- Form -->
				<form:form method="post" action="handleSMForm.html" modelAttribute="he">
					
					<!-- Tab Name -->
					<div class="tab_head">
						<ul class="tab">
							<li><a href="#" class="tablinks active"
								onclick="openTab(event, 'tab1')">Details</a></li>
							<li><a href="<%=request.getContextPath()%>/web/index.html" class="tablinks"
								onclick="openTab(event, 'tab2')">Departments</a></li>
						</ul>

						<!-- Operation -->
						<input type="button" value="Back" class="btn_opt" onclick="onBackOrg()">
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
					
					<!-- "Department" content -->
					<div id="tab2" class="tabcontent">
						<!-- Sort & Create-->
						<div class="sort">
							<span><a href="">All</a></span> |
							<span><a href="">0 - 9</a></span> |
							<span><a href="">A B C D E</a></span> |
							<span><a href="">F G H I J</a></span> |
							<span><a href="">K L M N</a></span> |
							<span><a href="">O P Q R</a></span> |
							<span><a href="">S T U V</a></span> |
							<span><a href="">W X Y Z</a></span>
							<span style="float: right;">
								<a href="#" class="btn_1">Create</a>
							</span>
						</div>
						
						<!-- List -->
						<table class="list">
							<tr>
								<th class="header-background">Department Name</th>
								<th class="header-background">Address</th>
								<th class="header-background">Postcode</th>
								<th class="header-background">Contact</th>
								<th class="header-background">
									<span>
										<input id="in-active" type="checkbox" onclick="getall()" ${check}>
										<label for="in-active"> In Active ?</label>
									</span>
								</th>
							</tr>
							<c:forEach var="dept" items="${result}">
								<tr>
						  			<c:if test="${dept.isActive == 'no' }">
						  				<td><a href="activateDept.html?departmentName=${dept.departmentName}&status=no" onclick="return confirm('Do you want to activate this department!')" style = "color: #333;">${dept.departmentName }</a> </td>
						  			</c:if>
						  			<c:if test="${dept.isActive == 'yes' }">
						  				<td><a href="viewDepartment.html?departmentName=${dept.departmentName}">${dept.departmentName }</a> </td>
						  			</c:if>
									<td>${dept.addressLine }</td>
									<td>${dept.postcode }</td>
									<td>${dept.leadContact }</td>
									<td>${dept.isActive }  </td>
								</tr>
							</c:forEach>
						</table>
						
						<!-- Page -->
						<%-- </form> --%>
						<div align="center" class="page">
							<a href = "wrap.html?url=previous"> <input type = "button"  value = "previous" class="btn_page" style = "${previous}"> </a> 
							<form  action="index.html">
								<c:forEach items="${ NumberOfButton}" var="num" >
									<c:if test="${checkButton == num}">
										<input type = "submit" value = "${num+1}" name = "pageNumber" id="wbutton" class="btn_page" style = "${style}">
									</c:if>
									<c:if test="${checkButton != num}">
										<input type = "submit" value = "${num+1}" name = "pageNumber" id="wbutton" class="btn_page">
									</c:if>
									<%-- <input type = "submit" value = "${num+1}" name = "pageNumber" id="wbutton" class="btn_page" style = "${style}"> --%>
								</c:forEach>
							</form>
							<a href = "wrap.html?url=next"> <input type = "button" value = "next" class="btn_page" style = "${next}"> </a>
						</div>
					</div>
					
				</form:form>
				<script type="text/javascript">
					function getall(){
						if (document.getElementById('in-active').checked) {location = "listAll.html";}
						else{ location = "listOnlyTrue.html"; }
					}
				</script>
				
<!-- 				script lookup -->
				<%@ include file="address_lookup.jsp" %>
				<%@ include file="list_contact.jsp" %>
				<%@ include file="business_lookup.jsp" %>
				<script type="text/javascript">
				// Get the modal
				var modal = document.getElementById('myModal');
				var contactModal = document.getElementById('contactModal');
				var businessModal = document.getElementById('businessModal');

				// Get the button that opens the modal
				var btn = document.getElementById("myBtn");
				var contact = document.getElementById("contact");
				var business = document.getElementById("business");

				// Get the <span> element that closes the modal
				var span = document.getElementsByClassName("close")[0];
				var span2 = document.getElementsByClassName("close2")[0];
				var span3 = document.getElementsByClassName("close3")[0];

				// When the user clicks the button, open the modal
				btn.onclick = function() {
				    modal.style.display = "block";
				}

				contact.onclick = function(){
					contactModal.style.display = "block";
				}

				business.onclick = function(){
					businessModal.style.display = "block";
				}

				// When the user clicks on <span> (x), close the modal
				span.onclick = function() {
				    modal.style.display = "none";
				}

				span2.onclick = function() {
				    contactModal.style.display = "none";
				}

				span3.onclick = function() {
					businessModal.style.display = "none";
				}

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
				    if (event.target == modal || event.target == contactModal || event.target == businessModal) {
				        modal.style.display = "none";
				        contactModal.style.display = "none";
				        businessModal.style.display = "none";
				    }
				}
				</script>
			</div>
			<div id="error" class="error"></div>
		</div>
	</div>
</body>
</html>