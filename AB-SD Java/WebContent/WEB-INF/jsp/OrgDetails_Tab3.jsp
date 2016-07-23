<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="tab3" class="tabcontent">
		<table>
			<tr>
				<td>EOI Programmes</td>
				<td>
					<div class="check-frame">
						<%
							for (int i = 1; i <= 10; i++) {
						%>
								<div>
									<span>
										<input id="check<%=i + 35%>" type="checkbox">
										<label for="check<%=i + 35%>">Programme <%=i%></label>
									</span>
								</div>
						<%
							}
						%>
					</div>
				</td>
			</tr>
			<tr>
				<td>EOI Services</td>
				<td>
					<div class="check-frame">
						<%
							for (int i = 1; i <= 10; i++) {
						%>
								<div>
									<span>
										<input id="check<%=i + 45%>" type="checkbox">
										<label for="check<%=i + 45%>">Services <%=i%></label>
									</span>
								</div>
						<%
							}
						%>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>