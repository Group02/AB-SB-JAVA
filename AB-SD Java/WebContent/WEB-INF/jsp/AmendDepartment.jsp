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
				<h1>Department Details</h1>
				
				<hr>

				<!-- Form -->
				<form:form method="post" action="handleSMForm.html" modelAttribute="command">
					
					<!-- Tab Name -->
					<div class="tab_head">
						<ul class="tab">
							<li><a href="#" class="tablinks active"
								onclick="openTab(event, 'tab1')">Details</a></li>
							<li><a href="#" class="tablinks"
								onclick="openTab(event, 'tab2')">Teams</a></li>
						</ul>

						<!-- Operation -->
						<input type="button" value="Back" class="btn_opt" onclick="">
						<input type="submit" value="Save" class="btn_opt">
					</div>
					
					<!-- "Details" content -->
					<div id="tab1" class="tabcontent" style="display: block;">
						<table class="tb_dir">
							<tr>
								<td>Department Name *</td>
								<td><form:input path="departmentName" size="24px" id = "departmentName" readonly = "${readonly}"/> </td>
								<td>Type of Business</td>
								<td>
								<form:input path="typeOfBusiness" class="background" disabled="true" style="width: 60%;" id="typebusi"/>
								<a href="#" id="business">Lookup</a>
								</td>
							</tr>
							<tr>
								<td>Department Short Description </td>
								<td>
									<form:textarea path="shortDescription" cols = "30" rows = "3" />
								</td>
								<td><span class="SIC">SIC Code</span></td>
								<td><span class="SIC"><form:input path="sicCode" class="background" disabled="true" style="width: 60%;" id="sic"/> </span> </td>
							</tr>
							<tr>
								<td>Lead Contact *</td>
								<td>
									<form:input path="leadContact" class="background" disabled="true" style="width: 60%;" id="leadcont"/>
									<a href="#" id="contact">Lookup</a>
								</td>
								<td rowspan="3"><span class="Fdes">Department Full Description</span></td>
								<td rowspan=3><span class="Fdes"><form:textarea path="fullDescription" cols = "30" rows = "3"/> </span></td>
							</tr>
							<tr>
								<td>Copy Address from</td>
								<td><input type="radio" value = "Organisation"><span class="radio">Organisation</span> &nbsp; &nbsp; <input type="radio" value = "Parent"><span class="radio">Parent</span> </td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
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
									<form:input path="postcode" class="background" style="width: 60%;" id="postCode"/>
									<a href="#" id="myBtn">Lookup</a>
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
						</table>
					</div>
					
					<!-- "Department" content -->
					<div id="tab2" class="tabcontent">
						<div class="sort">
							<span><a href="filter.html?search=ALL">All</a></span> |
							<span><a href="filter.html?search=0 9">0 - 9</a></span> |
							<span><a href="filter.html?search=A E">A B C D E</a></span> |
							<span><a href="filter.html?search=F J">F G H I J</a></span> |
							<span><a href="filter.html?search=K N">K L M N</a></span> |
							<span><a href="filter.html?search=O R">O P Q R</a></span> |
							<span><a href="filter.html?search=S V">S T U V</a></span> |
							<span><a href="filter.html?search=W Z">W X Y Z</a></span>
							<span style="float: right;">
								<a href="<%=request.getContextPath() %>/web/teamadd.html" class="btn_1">Create</a>
							</span>
							<span style="float: right;">
								<a href="#" class="btn_1">In-active</a>
							</span>
						</div>
						
						<!-- List -->
						<table class="list sortable">
							<thead>
								<tr>
									<th>Team Name</th>
									<th>Address Line 1</th>
									<th>Postcode</th>
									<th>Contact</th>
									<th>
										<span>
											<input id="in-active" type="checkbox" onclick="getall()">
											<label for="in-active"> In Active ?</label>
										</span>
										<script type="text/javascript">
											function getall(){
												var x = document.getElementsByClassName("in-activehide");
												
												if (document.getElementById("in-active").checked) {
													for(var i=0;i<x.length;i++) {
														x[i].style.display = "table-row";
													} 
												} else {
													for(var i=0;i<x.length;i++) {
														x[i].style.display = "none";
													} 
												}					
												
											}
											
											function active(){
												var x = confirm("Do you want to make this Team active?");
												
												if(x==true) return true;
												else return false;
											}
										</script>
									</th>
								</tr>
							</thead>
							<c:forEach var="team" items="${listTeam }">
								<c:choose>
									<c:when test="${team.status == true}">
										<tr>
											<td>
												<c:set var="url">
													<c:url value="teammo.html?departmentName=${departmentName}">
														<c:param name="teamName" value="${team.teamName }" ></c:param>
													</c:url>
												</c:set>
												<a href="${url}" >${team.teamName }</a>
											</td>
											<td>${team.address }</td>
											<td>${team.postCode }</td>
											<td>${team.leadContact }</td>
											<td>
												Yes
											</td>
										</tr>	
									</c:when>
									<c:otherwise>
										<tr class="in-activehide">
											<td>
												<a href="teamlist2.html?teamName=${team.teamName }&departmentName=${departmentName}" onclick="return active()" >${team.teamName }</a>
												<input id="${team.teamName }" value="${team.teamName }" type="hidden">
											</td>
											<td>${team.address }</td>
											<td>${team.postCode }</td>
											<td>${team.leadContact }</td>
											<td>
												No
											</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</table>
						
						<!-- Page -->
						<div align="center" class="page">
							<a href="#previous" class="btn_page">1</a>
							<a href="#previous" class="btn_page">2</a>
						</div>
					</div>				
				</form:form>
				
<!-- 				script for lookup -->
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