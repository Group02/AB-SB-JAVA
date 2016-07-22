<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/details.js"></script>
<title>Organisation Details</title>
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
				<form:form method="post" action="">
					<!-- Tab Name -->
					<div class="tab_head">
						<ul class="tab">
							<li><a href="#" class="tablinks"
								onclick="openTab(event, 'tab1')">Details 1</a></li>
							<li><a href="#" class="tablinks"
								onclick="openTab(event, 'tab2')">Details 2</a></li>
							<li><a href="#" class="tablinks active"
								onclick="openTab(event, 'tab3')">Details 3</a></li>
							<li><a href="#" class="tablinks"
								onclick="openTab(event, 'tab4')">Details 4</a></li>
							<li><a href="#" class="tablinks"
								onclick="openTab(event, 'tab5')">Details 5</a></li>
							<li><a href="#" class="tablinks"
								onclick="openTab(event, 'tab6')">BU/Directorates</a></li>
						</ul>

						<!-- Operation -->
						<input type="button" value="Back" class="btn_opt" onclick="onBackOrg()">
						<input type="submit" value="Save" class="btn_opt">
						<input type="button" value="In-active" class="btn_opt">
					</div>
					
					<!-- "Details 1" content -->
					<div id="tab1" class="tabcontent"></div>
					
					<!-- "Details 2" content -->
					<div id="tab2" class="tabcontent"></div>
					
					<!-- "Details 3" content -->
					<jsp:include page="OrgDetails_Tab3.jsp"/>
					
					<!-- "Details 4" content -->
					<div id="tab4" class="tabcontent"></div>
					
					<!-- "Details 5" content -->
					<div id="tab5" class="tabcontent"></div>
					
					<!-- "BU/Directorates" content -->
					<div id="tab6" class="tabcontent"></div>
				</form:form>
				
				<!-- Include AddSupportingMaterials Page -->
				<jsp:include page="AddSupportingMaterials.jsp"/>
			</div>
		</div>
	</div>
</body>
</html>