<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.*"%>

<%
	//Retrieve the password values from the form inputs
	String password = request.getParameter("password");
	String confirmPassword = request.getParameter("confirm_password");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UTS News :: Change Password</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="include/header.jsp" />
		<div class="container">
			<%
				//If the passwords do not match, return the user to the previous page with an error message
				if (!password.equals(confirmPassword)) {
					response.sendRedirect("change_password.jsp?error=passwordError");
				} else {
			%>
			<h1>Password Changed</h1>

			<p>
				You have successfully changed your password. <a href="dashboard.jsp">Click
					here</a> to return to the Dashboard</a>
			</p>

			<!--Update the JavaBean in the session with password value-->
			<jsp:useBean id="author" class="uts.wsd.Author" scope="session" />
			<jsp:setProperty name="author" property="*" />
			<%
				}
			%>
		</div>
	</div>

</body>
</html>