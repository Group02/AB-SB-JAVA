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
							<li><a href="<%=request.getContextPath() %>/organisation/searchBU.html?search=${search}" class="tablinks"
								onclick="openTab(event, 'tab1')">Details</a></li>
							<li><a href="#" class="tablinks active"
								onclick="openTab(event, 'tab2')">Departments</a></li>
						</ul>

						<!-- Operation -->
						<input type="button" value="Back" class="btn_opt" onclick="onBackOrg()">
						<input type="submit" value="Save" class="btn_opt">
					</div>
					
					<!-- "Details" content -->
					<div id="tab1" class="tabcontent">
					</div>
					
					<!-- "Department" content -->
					<div id="tab2" class="tabcontent" style="display: block;">
						<!-- Sort & Create-->
						<div class="sort">
							<span><a href="filter.html?search=all">All</a></span> |
							<span><a href="filter.html?search=0 9">0 - 9</a></span> |
							<span><a href="filter.html?search=A E">A B C D E</a></span> |
							<span><a href="filter.html?search=F J">F G H I J</a></span> |
							<span><a href="filter.html?search=K N">K L M N</a></span> |
							<span><a href="filter.html?search=O R">O P Q R</a></span> |
							<span><a href="filter.html?search=S V">S T U V</a></span> |
							<span><a href="filter.html?search=W Z">W X Y Z</a></span>
							<span style="float: right;">
							<a href="<%= request.getContextPath()%>/web/add.html" class="btn_1">Create</a>
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
						  				<td><a href="viewDepartment.html?departmentName=${dept.departmentName}&status=no" onclick="return confirm('Do you want to activate this department!')" style = "color: #333;">${dept.departmentName }</a> </td>
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
							<form  action="index.html" method="post">
								<c:forEach items="${ NumberOfButton}" var="num" >
									<c:if test="${checkButton == num}">
										<a href="index.html?pageNumber=${num+1}"><input type = "button"  value = "${num+1}" <%--name = "pageNumber" id="wbutton" --%> class="btn_page" style = "${style}"></a>
									</c:if>
									<c:if test="${checkButton != num}">
										<a href="index.html?pageNumber=${num+1}"><input type = "button" value = "${num+1}"></a>
										<%-- <input type = "submit" value = "${num+1}" name = "pageNumber" id="wbutton" class="btn_page"> --%>
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
			</div>
			<div id="error" class="error"></div>
		</div>
	</div>
</body>
</html>