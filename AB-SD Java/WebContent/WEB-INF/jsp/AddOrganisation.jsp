<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a new Organisation</title>
	<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="../js/AddOrganisation.js"></script>
	<link type="text/css" href="../css/organisationdetails.css" rel="stylesheet" media="screen"/>
</head>
<body>
<form method="post">
		<h1>Organisation details</h1>
			<div id = "wrapper">
				<div id = "tabs">
					<ul>
						<li class="active">Details 1</li>
						<li>Details 2</li>
					</ul>
				<div>
					<table>
						<tr>
							<td>Organisation Name *</td>
							<td><input type="text" id="orgName" size="24px"></td>
							<td>Preferred Organisation</td>
							<td><input type="checkbox" name="preOrg"></td>
						</tr>
						<tr>
							<td>Organisation Short Description *</td>
							<td><textarea id="ShortDescr" cols="25" rows="3" class="required"></textarea></td>
							<td>
								<table>
									<tr>
										<td>Expression of Interest</td>
									</tr>
									<tr>
										<td>Type of Business *</td>
									</tr>
								</table>	
							</td>	
							<td>
								<table>
									<tr>
										<td>
											<input type="checkbox" name="exprInterest">
										</td>
									</tr>
									<tr>
										<td>
											<input type="text" id="typeBusiness" class="background" size="14px" readonly="readonly" >
											<a href="#">Lookup</a>
										</td>
									</tr>
								</table>	
							</td>		
					</tr>
					<tr>
						<td>Lead Contact</td>
						<td>
							<input type="text" id="leadContact" class="background" size="16px" class="required" readonly="readonly">
							<a href="#">Lookup</a>
						</td>
						<td>SIC Code</td>
						<td><input type="text" id="SICCode" class="background" size="7px" readonly="readonly"></td>
					</tr>
					<tr>
						<td>
							<table>
								<tr>
									<td>Address Line 1*</td>
								</tr> 
								<tr>
									<td>Postcode *</td>	
								</tr>
							</table>
						</td>
						<td>
							<table>
								<tr>
									<td><input type="text" id="address" size="24px" class="required" ></td>
								</tr> 
								<tr>
									<td>
										<input type="text" id="postcode" size="16px" class="required" >
										<a href="#">Lookup</a>
									</td>
								</tr>
							</table>
						</td>
							<td>Organisation Full Description</td>
							<td><textarea id="orgFullDescr" cols="25" rows="3"></textarea></td>
					</tr>
					<tr>
						<td>City/Town</td>
						<td><input type="text" id="city" size="24px"></td>
						<td>Phone Number *</td>
						<td><input type="text" id="phoneNumber" size="24px" class="required" ></td>
					</tr>
					<tr>
						<td>County</td>
						<td><input type="text" id="city" size="24px"></td>
						<td>Fax</td>
						<td><input type="text" id="fax" size="24px"></td>
					</tr>
					<tr>
						<td>Nation/Country</td>
						<td>
							<select id="nation">
										<option>-- none --</option>
										<option>-- Viet Nam --</option>
										<option>-- America --</option>
							</select>
						</td>
						<td>Email</td>
						<td><input type="text" id="email" size="24px"></td>
					</tr>
					<tr>
						<td>Web Address</td>
						<td><input type="text" id="webAddress" size="24px"></td>
						<td>Charity Number</td>
						<td><input type="text" id="charityNumber" size="24px"></td>
					</tr>
					<tr>
						<td>Company Number</td>
						<td><input type="text" id="companyNumber" size="24px"></td>
						<td></td>
						<td>
							<button type="submit" id="save">Save</button>
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
<div id="error"></div>

</form>
</body>
</html>