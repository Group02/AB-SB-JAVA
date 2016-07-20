<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type = "text/css" href="../css/team.css" rel = "stylesheet" media = "screen"/>
<link rel="stylesheet" type="text/css" href="../css/style-1.css">
<title>Adding Team</title>
</head>
<body class="bg">
	<jsp:include page="menu.jsp" />
		 <form method = "post">
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
						<td><input type="text" name="orgName" size="24px"></td>
						<td>Type of Business</td>
						<td>
						<input type = "text" name = "typeBusiness"  class="background" size="14px" readonly="readonly">
						<a href="ListBusiness.jsp">Lookup</a>
						</td>
					</tr>
					<tr>
						<td>Team Short Description </td>
						<td>
							<textarea name = "orgShortDescr" cols = "30" rows = "3"></textarea>
						</td>
						<td><span class="SIC">SIC Code</span></td>
						<td><span class="SIC"><input type="text" name="SICCode" class="background" size="14px" readonly="readonly"></span> </td>
					</tr>
					<tr>
						<td>Lead Contact *</td>
						<td>
							<input type="text" name="leadContact" class="background" size="16px" readonly="readonly">
							<a href="ListContact.jsp">Lookup</a>
						</td>
						<td rowspan="3"><span class="Fdes">Team Full Description</span></td>
						<td rowspan=3><span class="Fdes"><textarea name="orgFullDescr" cols = "30" rows = "3"></textarea></span></td>
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
							<input type="text" name="address" size="24px">
						</td>
						<td>Phone Number</td>
						<td>
							<input type="text" name="address" size="24px">
						</td>
					</tr>
					<tr>
						<td>Postcode</td>
						<td>
							<input type="text" name="Postcode" class="background" size="16px" readonly="readonly">
							<a href="ListContact.jsp">Lookup</a>
						</td>
						<td>Fax</td>
						<td><input type="text" name="phoneNumber" size="24px" ></td>
					</tr>
					<tr>
						<td>Town/Village/City</td>
						<td><input type="text" name="city" size="24px"></td>
						<td>Email</td>
						<td><input type="text" name="fax" size="24px"></td>
					</tr>
					<tr>
						<td>County</td>
						<td><input type="text" name="county" size="24px"></td>
						<td>Web Address</td>
						<td><input type="text" name="charityNumber" size="24px"></td>
					</tr>
					<tr>
						<td>Nation/Country</td>
						<td>
							<select name="nation" >
											<option>-- none --</option>
											<option>-- Viet Nam --</option>
											<option>-- America --</option>
							</select>
						</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<button type="submit">Save</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="submit">Back</button>
						</td>
					</tr>
					
				</table>
			</div>
			<div class="hide">
				<p>Loading...</p>
				
			</div>
		</div>
	</div>
	</form>
</body>
</html>