<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/List.css">
<link rel="stylesheet" type="text/css" href="../css/Details.css">
<link rel="stylesheet" type="text/css" href="../css/main-page.css">
<title>Insert title here</title>
</head>
<body>
	<div id="banner" class="box-shadow">
		<div style="width: 100%">
			<div class="banner-main">
				<table width="100%">
					<tr>
						<td><img alt="AB-SA Java" src="../image/logo.png" height="40px;"></td>
						<td align="center">
							<%
								if(session.getAttribute("User") != null) {
							%>
									<jsp:include page="menu.jsp"/>
							<%
								}
							%>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>