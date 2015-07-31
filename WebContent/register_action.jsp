<%@page
	import="java.io.IOException,java.io.PrintWriter,com.oreilly.servlet.MultipartRequest"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.*"%>

<%
	String filePath = application.getRealPath("WEB-INF/authors.xml");
%>

<!-- Load the AuthorsApplication JavaBean -->
<jsp:useBean id="authorsApp" class="uts.wsd.AuthorsApplication" scope="application">
	<jsp:setProperty name="authorsApp" property="filePath" value="<%=filePath%>" />
</jsp:useBean>

<%
	//Adapted from: http://webideaworld.blogspot.in/2013/04/woking-with-enctypemultipartform-data.html
	
	//Code to get parameters from multipart form
	response.setContentType("text/html");
	PrintWriter pw = response.getWriter();
	String realPath = getServletContext()
			.getRealPath("/images/authors"); //https://community.oracle.com/thread/1400836
	MultipartRequest m = new MultipartRequest(request, realPath);

	//Retrieve the values from the form inputs
	String profileImage = m.getFilesystemName("filename");
	String name = m.getParameter("name");
	String email = m.getParameter("email");
	String password = m.getParameter("password");
	String confirmPassword = m.getParameter("confirm_password");
	String dob = m.getParameter("dob");
	String bio = m.getParameter("bio");

	//If a profile image has not been uploaded, set the user's image to a default placeholder
	if (profileImage == null) {
		profileImage = "../default.png";
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UTS News :: Register</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="wrapper"><jsp:include page="include/header.jsp" />

		<div class="container">
			<%
				Authors authors = authorsApp.getAuthors();
				
				//Return user to register page if email address is already registered
				if (authors.alreadyRegistered(email) == true) {
					response.sendRedirect("register.jsp?error=alreadyRegistered&name="
							+ name + "&dob=" + dob + "&bio=" + bio);
					
				//Return user to register page if password and confirm password fields do not match
				} else if (!password.equals(confirmPassword)) {
					response.sendRedirect("register.jsp?error=passwordError&name="
							+ name + "&email=" + email + "&dob=" + dob + "&bio="
							+ bio);
					
				//If registration is valid, add the Author
				} else {
					authorsApp.getAuthors().addAuthor(
							new Author(name, email, password, dob, bio,
									profileImage));
					Author author = authors.login(email, password);
					
					//Store the Author object in the session
					session.setAttribute("author", author);
					
					//Update the authors.xml file
					authorsApp.updateFile();
			%>


			<h1>Welcome</h1>

			<p>
				Welcome,
				<%=name%>! You have successfully been registered.
			</p>
			<br>
			<p>
				Click <a href="dashboard.jsp">here</a> to proceed to the Dashboard.
			</p>

			<%
				}
			%>
		</div>
	</div>
</body>
</html>
