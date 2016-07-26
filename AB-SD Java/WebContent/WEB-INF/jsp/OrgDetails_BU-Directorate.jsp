<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div id="tab6" class="tabcontent">
		<!-- Sort & Create-->
		<div class="sort">
			<span><a href="">All</a></span> |
			<span><a href="">0 - 9</a></span> |
			<span><a href="">A B C D E</a></span> |
			<span><a href="">F G H I J</a></span> |
			<span><a href="">K L M N</a></span> |
			<span><a href="">O P Q R</a></span> |
			<span><a href="">S T U V</a></span> |
			<span><a href="">W X Y Z</a></span>
			<span style="float: right;">
				<a href="<%=request.getContextPath()%>/organisation/createDir.html" class="btn_1">Create</a>
			</span>
		</div>
		
		<!-- List -->
		<table class="list">
			<tr>
				<th>BU/Directorate Name</th>
				<th>Head Office Address Line 1</th>
				<th>Postcode</th>
				<th>Contact</th>
				<th>
					<span>
						<input id="in-active" type="checkbox">
						<label for="in-active"> In Active ?</label>
					</span>
				</th>
			</tr>
			<c:forEach var="i" items="${list}">
				<c:choose >
					<c:when test="${i.active ==true}">
						<tr>
							<td>
							<c:set var="url">
									<c:url value="amendDir.html">
										<c:param name="directorateName" value="${i.directorateName }" ></c:param>
									</c:url>
								</c:set>
								<a href="${url}" >${i.directorateName }</a>
							</td>
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
		
		<!-- Page -->
		<div align="center" class="page">
			<a href="#previous" class="btn_page">1</a>
			<a href="#previous" class="btn_page">2</a>
		</div>
	</div>
</body>
</html>