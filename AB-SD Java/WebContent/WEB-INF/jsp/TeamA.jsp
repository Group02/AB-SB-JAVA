<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type = "text/css" href="../css/team.css" rel = "stylesheet" media = "screen"/>
<link rel="stylesheet" type="text/css" href="../css/style-1.css">
<link rel="stylesheet" type="text/css" href="../css/address.css">
<link rel="stylesheet" type="text/css" href="../css/lookup.css">
<title>Adding Team</title>
<script type="text/javascript">
	function goBack() {
	    window.history.back();
	}
	
	function disa(){
		document.getElementById("typebusi").disabled=true;
		document.getElementById("sic").disabled=true;
		document.getElementById("leadcont").disabled=true;
	}
	
	function checkEMP(){
		if(document.getElementById("teamName").value == null || document.getElementById("teamName").value ==""){
			document.getElementById("teamName").style.borderColor = "red";
			document.getElementById("message").innerHTML = "Please don't leave this empty";
			return false;
		}
			return true;
	}
	
</script>
</head>
<body onload="disa()">
	<div >
		<form:form  modelAttribute="command" action="teamadd.html" method="post" style="margin:0 auto;">
		  <h6 class="path"><span class="text">Organisation</span> > <span class="text">Directorate</span> > <span class="text">Department</span></h6>
	      <h1>Team details</h1>
			<div id = "wrapper">
				<div id = "tabs">
					<ul>
						<li class="active">Detail</li>
					</ul>
					<div>
						<table>
							<tr>
								<td>Team Name *</td>
								<td><form:input path="teamName" size="24px" id="teamName"/> </td>
								<td>Type of Business</td>
								<td>
								<form:input path="typeOfBu" class="background" size="14px" id="typebusi"/>
								<a href="#" id="business">Lookup</a>
								</td>
							</tr>
							<tr>
								<td>Team Short Description </td>
								<td>
									<form:textarea path="shortDes" cols = "30" rows = "3"/>
								</td>
								<td><span class="SIC">SIC Code</span></td>
								<td><span class="SIC"><form:input path="sicCode" class="background" size="14px" readonly="readonly" id="sic"/> </span> </td>
							</tr>
							<tr>
								<td>Lead Contact</td>
								<td>
									<form:input path="leadContact" class="background" size="16px" readonly="readonly" id="leadcont" />
									<a href="#" id="contact">Lookup</a>
								</td>
								<td rowspan="3"><span class="Fdes">Team Full Description</span></td>
								<td rowspan=3><span class="Fdes"><form:textarea path="fullDes" cols = "30" rows = "3"/> </span></td>
							</tr>
							<tr>
								<td>Copy Address from</td>
								<td><input type="radio"><span class="radio">Organisation</span> &nbsp; &nbsp; <input type="radio"><span class="radio">Parent</span> </td>
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
									<form:input path="address" size="24px"/>
								</td>
								<td>Phone Number</td>
								<td>
									<form:input path="phone" size="24px"/>
								</td>
							</tr>
							<tr>
								<td>Postcode</td>
								<td>
									<form:input path="postCode" class="background" size="16px" readonly="readonly" id="postCode"/>
									<a href="#" id="myBtn">Lookup</a>
								</td>
								<td>Fax</td>
								<td><form:input path="fax" size="24px"/> </td>
							</tr>
							<tr>
								<td>Town/Village/City</td>
								<td><form:input path="town" size="24px"/> </td>
								<td>Email</td>
								<td><form:input path="mail" size="24px"/> </td>
							</tr>
							<tr>
								<td>County</td>
								<td><form:input path="county" size="24px"/> </td>
								<td>Web Address</td>
								<td><form:input path="WA" size="24px"/> </td>
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
								<td colspan="3"><div id="message" style="border:none; color:red;"></div> </td>
								<td>
									<button type="submit" onclick="return checkEMP();">Save</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="button" onclick="goBack()">Back</button>
								</td>
							</tr>
							
						</table>
					</div>
			<div class="hide">
				<p>Loading...</p>
				
			</div>
		</div>
	</div>
	</form:form>
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
</body>
</html>