<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	//Clear the author's session
	session.invalidate();
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News :: Logged Out</title>
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
			<h1>Logged out</h1>
			<p>
				You have been logged out. <a href="index.jsp">Click here</a> to
				return to the main page.
			</p>

		</div>
	</div>

</body>
</html>