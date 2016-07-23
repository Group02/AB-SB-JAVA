<%@page import="java.util.Date"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AB-SD: Organisation Details</title>
</head>
<body>
	<div id="sm-details" class="popup-form">
		<fieldset>
			<legend>Supporting Materials Details</legend>
			<form:form action="handleSMForm.html" modelAttribute="SM" method="post">
				<!-- Tab Name -->
				<div class="tab_head">
					<ul class="tab">
						<li><a href="#" class="tablinks" >Details</a></li>
					</ul>

					<!-- Operation -->
					<input type="button" value="Back" onclick="onBack()" class="btn_opt">
					<input type="submit" value="Save" class="btn_opt">
				</div>
				<div class="tabcontent" style="display: block;">
					<table width="100%">
						<tr valign="top">
							<td>
								<table class="">
									<tr>
										<td>URL<span class="mandatory">*</span></td>
										<td><form:input path="url" id="url"/></td>
									</tr>
									<tr>
										<td>Description</td>
										<td><form:textarea path="description" id="description" rows="5" cols="25"/>
									</tr>
									<tr>
										<td>Type</td>
										<td>
											<form:select path="type" id="type">
												<form:option value="PDF">PDF</form:option>
												<form:option value="Doc">Doc</form:option>
												<form:option value="Excel">Excel</form:option>
											</form:select>
										</td>
									</tr>
								</table>
							</td>
							<td>
								<table>
									<tr>
										<td>Added By</td>
										<td>
											<% 
												User currentUser = (User) session.getAttribute("User"); 
												String userEmail = currentUser.getEmail();
											%>
											<input type="hidden" id="addedBy" name="addedBy" value="<%=userEmail%>">
											<form:input path="addedBy" value="<%=userEmail%>" disabled="true"/>
										</td>
									</tr>
									<tr>
										<td>Added Date</td>
										<td>
											<input type="text" id="addedBy" name="addedBy" value="<%=new Date()%>" disabled="disabled">
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</form:form>
		</fieldset>
	</div>
</body>
</html>