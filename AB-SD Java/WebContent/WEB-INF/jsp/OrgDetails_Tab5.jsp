<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="../js/sorttable.js"></script>
	<script type="text/javascript" src="../js/details.js"></script>
</head>
<body>
	<div id="tab5" class="tabcontent">
		<h3>Current List of Supporting Materials</h3>
		<hr>
		<div class="sort" style="margin-bottom: 25px;">
			<span style="float: right;">
				<a href="#sm-details" class="btn_1" onclick="opCreateSM()">Create</a>
			</span>
		</div>
		<table class="list sortable">
			<thead>
				<tr>
					<th>URL</th>
					<th>Description</th>
					<th>Type</th>
					<th>Added By</th>
					<th>Added Date</th>
					<th>
						<span>
							<input id="in-active-SM" type="checkbox" onclick="onCheckInActive()">
							<label for="in-active-SM">In Active?</label>
						</span>
					</th>	
				</tr>
			</thead>
			<tbody>
				<c:forEach var="sm" items="${listSM}" varStatus="i">
					<c:choose>
						<c:when test="${sm.isActive == false}">
							<tr id="${sm.url}" class="inActive-SM">
								<td><a href="#sm-details" onclick="onModifySM('${sm.url}', 'sm-details')">${sm.url}</a></td>
								<td>${sm.description}</td>
								<td>${sm.type}</td>
								<td>${sm.addedBy}</td>
								<td>${sm.addedDate}</td>
								<td>No</td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr id="${sm.url}">
								<td><a href="#sm-details" onclick="onModifySM('${sm.url}', 'sm-details')">${sm.url}</a></td>
								<td>${sm.description}</td>
								<td>${sm.type}</td>
								<td>${sm.addedBy}</td>
								<td>${sm.addedDate}</td>
								<td>Yes</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</tbody>
		</table>
		
		<!-- Page -->
		<div align="center" class="page">
			<a href="#previous" class="btn_page">1</a>
			<a href="#previous" class="btn_page">2</a>
		</div>
	</div>
</body>
</html>