<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Directorte</title>
<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="../js/AddOrganisation.js"></script>
<link  type="text/css" href="../css/DirectorateList.css" rel="stylesheet"/>
<link type="text/css" href="../css/style-1.css" rel="stylesheet"/>
</head>
<body>
<div>
	<jsp:include page="menu.jsp" />
</div>
<div>
	<form:form action="add.html" method="post" modelAttribute="Directorate">
		<h1>Organisation details</h1>
				<div id="wrapper">
					<div id="tabs">
					
						<ul>
							<li class="active">Details 1</li>
							<li>Details 2</li>
							<li>Details 3</li>
							<li>Details 4</li>
							<li>Details 5</li>
							<li>BU/Directorate</li>
						</ul>
					<div class="content">
						<table>
							<tr>
								<td>Organisation Name *</td>
								<td><input type="text" id="orgName" size="24px"></td>
								<td>Preferred Organisation</td>
								<td>
									<span>
										<input type="checkbox" name="preOrg" id="preOrg" style="border: 1px solid #0067FF">
										<label for="preOrg" ></label>
									</span>
								</td>
							</tr>
							<tr>
								<td rowspan=2>Organisation Short Description *</td>
								<td rowspan=2><textarea id="shortDescr" cols="30" rows="3"></textarea></td>
								<td>Expression of Interest</td>
								<td>
									<span>
										<input type="checkbox" name="exprInterest" id="exprInterest" style="border: 1px solid #0067FF">
										<label for="exprInterest" ></label>
									</span>
								</td>
							</tr>
							<tr>
								<td>Type of Business*</td>
								<td>
									<input type="text" id="typeBusiness" class="background" size="16px" readonly="readonly" >
									<a href="#">Lookup</a>
								</td>
							</tr>
							<tr>
								<td>Lead Contact</td>
								<td>
								<input type="text" id="leadContact" class="background" size="17px" readonly="readonly">
								<a href="#">Lookup</a>
							</td>
							<td>SIC Code</td>
							<td><input type="text" id="SICCode" class="background" size="7px" readonly="readonly"></td>
						</tr>
						<tr>
							<td>Address Line 1*</td>
							<td><input type="text" id="address" size="24px"></td>
							<td rowspan=2>Organisation Full Description</td>
							<td rowspan=2><textarea id="orgFullDescr" cols="30" rows="3"></textarea></td>
						</tr>
						<tr>		
							<td>Postcode *</td>	
							<td><input type="text" id="postcode" size="16px">
							<a href="#">Lookup</a></td>
						</tr>
						<tr>
							<td>City/Town</td>
							<td><input type="text" id="city" size="24px"></td>
							<td>Phone Number *</td>
							<td><input type="text" id="phoneNumber" size="24px"></td>
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
											<option>-- VietNam --</option>
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
								<button>Save</button>
								<a href="<%= request.getContextPath() %>/organisation/list.html" class="bt" style="text-decoration:none">Back</a>
							</td>
						</tr>	
					</table>
				</div>
				
				<div class="content hide">
					<p>This tab is building...</p>
				</div>
				
				<div class="content hide">
					<p>This tab is building...</p>
				</div>
				
				<div class="content hide">
					<p>This tab is building...</p>
				</div>
				
				<div class="content hide">
					<p>This tab is building...</p>
				</div>
				
				<div class="content hide sort">
		
				<!-- Sort & Create-->
				
					<span><a href="">All</a></span> |
					<span><a href="">0 - 9</a></span> |
					<span><a href="">A B C D E</a></span> |
					<span><a href="">F G H I J</a></span> |
					<span><a href="">K L M N</a></span> |
					<span><a href="">O P Q R</a></span> |
					<span><a href="">S T U V</a></span> |
					<span><a href="">W X Y Z</a></span>
					<span style="float: right;">
						<a href="<%= request.getContextPath() %>/directorate/add.html" class="btn_1">Create</a>
					</span>
					
					<!-- List -->
				
					<table>
						<tr>
							<th class="header-background">BU/Directorate Name</th>
							<th class="header-background">Head Office Address Line 1</th>
							<th class="header-background">Postcode</th>
							<th class="header-background">Contact</th>
							<th class="header-background">
								<span>
									<input id="in-active" type="checkbox" onclick="getAll()">
									<label for="in-active"> Is Active ?</label>
								</span>
								<script type="text/javascript">
									function getAll(){
										var x = document.getElementsByClassName("in-activehide");
										if(document.getElementById("in-active").checked){
											for(var i=0; x.length;i++){
												x[i].style.display="table-row";
											}
										}else{
											for(var i=0; x.length;i++){
												x[i].style.display="none";
											}
										}
									}
								</script>
							</th>
						</tr>
						<c:forEach var="i" items="${list }">
							<c:choose >
										<c:when test="${i.active ==true}">
											<tr>
											<td>${i.directorateName }</td>
											<td>${i.addrLine1}</td>
											<td>${i.postcode}</td>
											<td>${i.leadContact}</td>
											<td>Yes</td>
											</tr>
										</c:when>
										<c:otherwise >
											<tr class="in-activehide">
											<td>${i.directorateName }</td>
											<td>${i.addrLine1}</td>
											<td>${i.postcode}</td>
											<td>${i.leadContact}</td>
											<td>no</td>
											</tr>
										</c:otherwise>
							</c:choose>
							
							

							
						</c:forEach>
					</table>
								
			</div>
		</div>
		<div id="error" class="error"></div>
	</div>
	
	</form:form>
</div>
</body>
</html>