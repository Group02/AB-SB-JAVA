<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/details.js"></script>
<title>Organisation Details</title>
<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<script>
   
</script>
</head>
<body class="bg">

	<!-- HEADER -->
	
	<jsp:include page="header.jsp"></jsp:include>

	<!-- MAIN PAGE -->
	
	<div class="container">
		<div class="main">
			<div class="content">
				<!-- Titile -->
				<h1>Organisation Details</h1>
				
				<hr>
				
				<!-- Form -->
				<form:form method="post" action="handleSMForm.html" modelAttribute="Org" onsubmit="return validateTab1()">
					<!-- Tab Name -->
					<div class="tab_head">
						<ul class="tab">
							<li><a href="#" class="tablinks active"
								onclick="openTab(event, 'tab1')">Details 1</a></li>
							<li><a href="#" class="tablinks"
								onclick="openTab(event, 'tab2')">Details 2</a></li>
							<li id="tablink3"><a href="#" class="tablinks" 
								onclick="openTab(event, 'tab3')">Details 3</a></li>
						</ul>

						<!-- Operation -->
						<input type="button" value="Back" class="btn_opt" onclick="onBackOrg()">
						<input type="submit" value="Save" class="btn_opt">
					</div>
					
					<!-- "Details 1" content -->
					<jsp:include page="OrgDetails_Tab1.jsp"/>
					
					<!-- "Details 2" content -->
					<jsp:include page="OrgDetails_Tab2.jsp"/>
					
					<!-- "Details 3" content -->
					<jsp:include page="OrgDetails_Tab3.jsp"/>
				</form:form>
				
				<!-- Error -->
				<div id="error" class="error"></div>
				
				<!-- Save Status of Details 1 -->
				<div id="st_orgName" class="error"></div>
				<div id="st_drs" class="error"></div>
				<div id="st_addr" class="error"></div>
				<div id="st_postcode" class="error"></div>
				<div id="st_business" class="error"></div>
				<div id="st_phone" class="error"></div>
				
				<div id="success" style="color: green; font-style: italic;"></div>
			</div>
		</div>
	</div>
</body>
</html>