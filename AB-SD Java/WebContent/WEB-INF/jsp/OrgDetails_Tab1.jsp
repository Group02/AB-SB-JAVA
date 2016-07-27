<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="tab1" class="tabcontent" style="display: block;">
		<table id="tb_tab1" width="100%">
			<tr valign="top">
				<td>
					<table class="cols-left"> 
						<tr>
							<td>Organisation Name <span class="mandatory">*</span></td>
							<td><form:input path="orgName" id="orgName" value="Organisation Name 1"/></td>
						</tr>
						<tr>
							<td>Organisation Short Description <span class="mandatory">*</span></td>
							<td><form:textarea path="shortDescr" cols="30" rows="5" id="shortDescr"/></td>
						</tr>
						<tr>
							<td>Lead Contact</td>
							<td>
								<form:hidden id="contactId" path="leadContact.id"/>
								<input type="text" id="contactName" disabled="disabled" style="width: 60%;" value="Nguyen Van A0">
								<a href="#" onclick="openPopup('popup-address')">Lookup</a>
							</td>
						</tr>
						<tr>
							<td>Address Line <span class="mandatory">*</span></td>
							<td><form:input id="addressLine" path="addressLookup.address" value="218/20 Tran Hung Dao, Ninh Kieu, Can Tho"/></td>
						</tr>
						<tr>
							<td>Postcode <span class="mandatory">*</span></td>
							<td>
								<form:input id="postcode" path="addressLookup.postCode" style="width: 60%;" value="SE10 110"/>
								<a href="#">Lookup</a>
							</td>
						</tr>
						<tr>
							<td>City/Town</td>
							<td><form:input id="town" path="addressLookup.town"/></td>
						</tr>
						<tr>
							<td>County</td>
							<td><form:input id="county" path="addressLookup.county"/></td>
						</tr>
						<tr>
							<td>National/Country</td>
							<td>
								<form:select path="addressLookup.country">
									<form:option value="Viet Name">Viet Nam</form:option>
									<form:option value="England">England</form:option>
									<form:option value="Singapore">Singapore</form:option>
									<form:option value="United States">United States</form:option>
									<form:option value="Malaysia">Malaysia</form:option>
								</form:select>
							</td>
						</tr>
						<tr>
							<td>Preferred Organisation</td>
							<td><input type="checkbox" id="preferredOrganisation"></td>
						</tr>
						<tr>
							<td>Expression of Interest</td>
							<td>
								<input type="checkbox" id="expressOfInterest" onclick="openTab3()">
							</td>
						</tr>
					</table>
					
				</td>
				<td style="padding-left: 10px;">
					<table class="cols-right">
						<tr>
							<td>Type of Business <span class="mandatory">*</span></td>
							<td>
								<form:input id="businessName" path="businessLookup.businessName" style="width: 60%;" value="Type1"/>
								<a href="#">Lookup</a>
							</td>
						</tr>
						<tr>
							<td>SIC Code</td>
							<td><input type="text" id="SIC_Code" disabled="disabled"></td>
						</tr>
						<tr>
							<td>Organisation Full Description</td>
							<td><form:textarea path="shortDescr" cols="30" rows="5"/></td>
						</tr>
						<tr>
							<td>Phone Number <span class="mandatory">*</span></td>
							<td>
								<form:input path="phoneNumber" id="phoneNumber" value="0918 113 114"/>
							</td>
						</tr>
						<tr>
							<td>Fax</td>
							<td>
								<form:input path="fax"/>
							</td>
						</tr>
						<tr>
							<td>Email</td>
							<td>
								<form:input path="email"/>
							</td>
						</tr>
						<tr>
							<td>Web Address</td>
							<td>
								<form:input path="webAddr"/>
							</td>
						</tr>
						<tr>
							<td>Charity Number</td>
							<td>
								<input type="text" id="charityNumber" name="charityNumber">
							</td>
						</tr>
						<tr>
							<td>Company Number</td>
							<td>
								<input type="text" id="companyNumber" name="companyNumber">
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
		<!-- Contact Lookup -->
		<div id="lookup-address" style="position: fixed; top: 0; left: 0">
			<jsp:include page="ListContact.jsp"/>
		</div>
	</div>
</body>
</html>