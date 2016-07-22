<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/List.css">
<link rel="stylesheet" type="text/css" href="../css/Details.css">
<script type="text/javascript">
	function openTab(evt, tabName) {
	    var i, tabcontent, tablinks;
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	    tablinks = document.getElementsByClassName("tablinks");
	    for (i = 0; i < tablinks.length; i++) {
	        tablinks[i].className = tablinks[i].className.replace(" active", "");
	    }
	    document.getElementById(tabName).style.display = "block";
	    evt.currentTarget.className += " active";
	}
</script>
<title>Oranisation Details</title>
</head>
<body class="bg" onload="openTab(event, 'tab3')">

	<!-- HEADER -->
	
	<jsp:include page="header.jsp"></jsp:include>

	<!-- MAIN PAGE -->
	
	<div class="container" align="center">
		<table id="layout">
			<tr>
				<!-- MENU -->
				<td width="250px">
					<jsp:include page="vertical-menu.jsp"></jsp:include>
				</td>
				
				<!-- MAIN -->
				<td>
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
									  	<li><a href="#" class="tablinks" onclick="openTab(event, 'tab1')">Details 1</a></li>
									  	<li><a href="#" class="tablinks" onclick="openTab(event, 'tab2')">Details 2</a></li>
									  	<li><a href="#" class="tablinks" onclick="openTab(event, 'tab3')">Details 3</a></li>
									  	<li><a href="#" class="tablinks" onclick="openTab(event, 'tab4')">Details 4</a></li>
									  	<li><a href="#" class="tablinks" onclick="openTab(event, 'tab5')">Details 5</a></li>
									  	<li><a href="#" class="tablinks" onclick="openTab(event, 'tab6')">BU/Directorates</a></li>
									</ul>
									
									<input type="button" value="Back" class="btn_opt">
									<input type="submit" value="Save" class="btn_opt">
									<input type="button" value="In-active" class="btn_opt">
								</div>
								
								<!-- "Details 1" content -->
								<div id="tab1" class="tabcontent"></div>
								
								<!-- "Details 2" content -->
								<div id="tab2" class="tabcontent"></div>
								
								<!-- "Details 3" content -->
								<div id="tab3" class="tabcontent">
									<div>
										<h3>Current List of Supporting Materials</h3>
										<hr>
										<div class="sort" style="margin-bottom: 25px;">
											<span style="float: right;">
												<a href="" class="btn_1">Create</a>
											</span>
										</div>
										<table class="list">
											<tr>
												<th>URL</th>
												<th>Description</th>
												<th>Type</th>
												<th>Added By</th>
												<th>Added Date</th>
												<th>
													<span>
														<input id="in-active" type="checkbox">
														<label for="in-active"> In Active ?</label>
													</span>
												</th>
											</tr>
											<c:forEach var="sm" items="${listSM}">
												<tr>
													<td><a href="${sm.url}">${sm.url}</a></td>
													<td>${sm.description}</td>
													<td>${sm.type}</td>
													<td>${sm.addedBy}</td>
													<td>${sm.addedDate}</td>
													<td></td>
												</tr>
											</c:forEach>
										</table>
										
										<!-- Page -->
										<div align="center" class="page">
											<a href="#previous" class="btn_page">1</a>
											<a href="#previous" class="btn_page">2</a>
										</div>
									</div>
								</div>
								
								<!-- "Details 4" content -->
								<div id="tab4" class="tabcontent"></div>
								
								<!-- "Details 5" content -->
								<div id="tab5" class="tabcontent"></div>
								
								<!-- "BU/Directorates" content -->
								<div id="tab6" class="tabcontent"></div>
							</form:form>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>