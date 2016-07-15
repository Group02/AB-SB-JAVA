<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a new Organisation</title>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery.min.js"></script>
	<link type = "text/css" href="../css/organisationdetails.css" rel = "stylesheet" media = "screen"/>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#tabs ul li").click(function(){
				$("#tabs ul li").removeClass('active');
				//var current_index = $(this).index();//use for jquery >=1.4.x
				var current_index = $("#tabs ul li").index(this);
				$("#tabs ul li:eq("+current_index+")").addClass("active");
				$("#tabs div").hide();
				$("#tabs div:eq("+current_index+")").fadeIn(100);
				
			});
		});
	</script>
</head>
<body>
<form>
	 <form method = "post">
      <header>Organisation details</header>
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
					<td><input type="text" name="orgName" size="24px"></td>
					<td>Preferred Organisation</td>
					<td><input type = "checkbox" name = "preOrg"></td>
				</tr>
				<tr>
					<td>Organisation Short Description </td>
					<td>
						<textarea name = "orgShortDescr" cols = "25" rows = "3"></textarea>
					</td>
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
								<td><input type = "checkbox" name = "exprInterest"></td>
							</tr>
							<tr>
								<td>
									<input type = "text" name = "typeBusiness"  class="background" size="14px" readonly="readonly">
									<a href="ListBusiness.jsp">Lookup</a>
								</td>
							</tr>
						</table>	
					</td>		
				</tr>
				<tr>
					<td>Lead Contact *</td>
					<td>
						<input type="text" name="leadContact" class="background" size="16px" readonly="readonly">
						<a href="ListContact.jsp">Lookup</a>
					</td>
					<td>SIC Code</td>
					<td><input type="text" name="SICCode" class="background" size="7px" readonly="readonly"></td>
				</tr>
				<tr>
					<td>
						<table>
							<tr>
								<td>Address *</td>
							</tr> 
							<tr>
								<td>Postcode *</td>	
							</tr>
						</table>
					</td>
					<td>
						<table>
							<tr>
								<td><input type="text" name="address" size="24px"></td>
							</tr> 
							<tr>
								<td><input type="text" name="postcode" size="24px"></td>	
							</tr>
						</table>
					</td>
					<td>Organisation Full Description</td>
					<td><textarea name="orgFullDescr" cols = "25" rows = "3"></textarea></td>
				</tr>
				<tr>
					<td>City/Town</td>
					<td><input type="text" name="city" size="24px"></td>
					<td>Phone Number *</td>
					<td><input type="text" name="phoneNumber" size="24px" ></td>
				</tr>
				<tr>
					<td>County</td>
					<td><input type="text" name="city" size="24px"></td>
					<td>Fax</td>
					<td><input type="text" name="fax" size="24px"></td>
				</tr>
				<tr>
					<td>Nation/Country</td>
					<td>
						<select name="nation">
										<option>-- none --</option>
										<option>-- Viet Nam --</option>
										<option>-- America --</option>
						</select>
					</td>
					<td>Email</td>
					<td><input type="email" name="email" size="24px"></td>
				</tr>
				<tr>
					<td>Web Address</td>
					<td><input type="text" name="webAddress" size="24px"></td>
					<td>Charity Number</td>
					<td><input type="text" name="charityNumber" size="24px"></td>
				</tr>
				<tr>
					<td>Company Number</td>
					<td><input type="text" name="companyNumber" size="24px"></td>
					<td></td>
					<td>
						<button type="submit">Save</button>&nbsp&nbsp&nbsp
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