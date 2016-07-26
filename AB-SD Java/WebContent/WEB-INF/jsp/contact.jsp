<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset-utf-8">
	<title>Add a new Contact</title>
	<link type="text/css" href="../css/contact2.css" rel="stylesheet"/>
	<script type="text/javascript" src="../js/contact.js"></script>
</head>
<body>
	<form>
		<h1> Create New Contact </h1>
		 <fieldset>
		   <table cellspacing=10>
			  <tr>
				<td> First Name *</td> 
				<td> <input type="text" name = "firstName" id = "firstName"></td>
				<td> Manager Name </td>
				<td> <input type="text" name="managerName" readonly="readonly" class="background">&nbsp;&nbsp; <a href="">Lookup</a> </td>
			  </tr>
			 <tr>
			   <td>Surname *</td>
			   <td> <input type="text" name="surName" id = "surName"> </td>
			   <td> Contact Type * </td>
			   <td> <select id = "contactType">
						<option></option>
						<option value="hello"> Text </option>
					</select>
			   </td>
			 </tr>
			 <tr>
			   <td> Known As </td>
			   <td> <input type="text" name="knownAs"></td>
			   <td> Best Contact Method</td>
			   <td> <select>
				 </select>
			   </td>
			 </tr>
			 <tr>
				<td> Office Phone</td> 
				<td> <input type="text" name = "officePhone"></td>
				<td> Job Role </td>
				<td> <input type="text" name="jobRole"></td>
			  </tr>
			 <tr>
				<td> Mobile Phone</td> 
				<td> <input type="text" name = "mobilePhone"></td>
				<td> Workbase </td>
				<td> <input type="text" name="workBase"></td>
			  </tr>
			 <tr>
				<td> ST Home Phone</td> 
				<td> <input type="text" name = "homePhone"></td>
				<td> Job Title </td>
				<td> <input type="text" name="jobTitle"></td>
			  </tr>
			 <tr>
				<td> Email Address</td> 
				<td> <input type="text" name = "emailAddress"></td>
				<td> Is Active </td>
				<td> <input type="checkbox" name="isActive"></td>
			  </tr>
			</table>
		   </fieldset>
		  <div id = "footer">
			<p id = "error"> </p>
			<button onclick="save()"> Save </button>
			<button> Back </button>
		  </div>
	</form>
</body>
</html>