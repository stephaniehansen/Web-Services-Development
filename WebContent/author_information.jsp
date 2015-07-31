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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
<body>

	<div class="wrapper">
		<jsp:include page="include/header.jsp" />

		<div class="container">

			<%
				//Retrieve the author's name for the URL parameter
				String name = request.getParameter("name");
			
				//Retrieve the author object based on the author's name
				Author author = authorsApp.getAuthors().getAuthor(name);
			%>
			<div id="breadcrumbs">
				<a href="index.jsp">Home</a> >
				<%=name%></div>
			<h1><%=name%></h1>

			<p>
				<p><img id="fullAuthorImage" src=images/authors/<%=author.getProfileImage()%>>	
				<b>Date of Birth: <%=author.getDob()%></b><br>
			<p id="bio"><%=author.getBio()%></p>
			<br>


		</div>
	</div>
</body>
</html>

