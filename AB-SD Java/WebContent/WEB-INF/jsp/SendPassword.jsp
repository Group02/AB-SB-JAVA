<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/login.css">
<link rel="stylesheet" type="text/css" href="../css/style-1.css">
<script type="text/javascript" src="../js/LoginValidate.js"></script>
<title>Login</title>
</head>
<body class="bg">
	<jsp:include page="menu.jsp" />
	<div class="container">
		<div class="vertical-middle">
			<div class="login-form box-shadow">
				<div class="header header-background" align="center">
					<h2>Forgot your password?</h2>
				</div>
				<div class="form">
					<form action="handle-forgot-pwd.html" onsubmit="return checkEmail()" 
						method="post">
						<div style="color: #0067FF;;">Input your email:</div>
						<div><input type="text" name="email" id="email"></div>
						<div id="error" class="error">${message}</div>
						<div align="center"><input type="submit" value="Send Password"></div>
					</form>
				</div>
				<div class="header header-background" align="center">
					<a href="index.html" class="back">Back to Login Page</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>