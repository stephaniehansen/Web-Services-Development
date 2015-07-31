<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.*"%>
	
<%
	String filePath = application.getRealPath("WEB-INF/authors.xml");
%>

<!-- Load the AuthorsApplication JavaBean -->
<jsp:useBean id="authorsApp" class="uts.wsd.AuthorsApplication"
	scope="application">
	<jsp:setProperty name="authorsApp" property="filePath"
		value="<%=filePath%>" />
</jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>UTS News :: Login</title>
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
				//If the author exists and the email and password is valid, return the Author object
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				Authors authors = authorsApp.getAuthors();
				Author author = authors.login(email, password);
				if (author != null) {
					//Store the Author object in the session
					session.setAttribute("author", author);
			%>
			<p>Login successful. You are being automatically redirected.</p>
			<%
					//http://examples.javacodegeeks.com/enterprise-java/jsp/send-redirect-in-jsp-page
					response.sendRedirect("dashboard.jsp");
			
				} else {
			%>
			<h1>Login Unsuccessful</h1>
			Login Unsuccessful. Click <a href="login.jsp">here</a> to try again.
			<%
				}
			%>
		</div>
	</div>
</body>
</html>