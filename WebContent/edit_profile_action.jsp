<%@page
	import="java.io.IOException,java.io.PrintWriter,com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.*"%>

<!--Update the JavaBean in the session with the respective values-->
<jsp:useBean id="author" class="uts.wsd.Author" scope="session" />
<jsp:setProperty name="author" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>UTS News :: Profile Updated</title>


</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
<body>
	<div class="wrapper">
		<jsp:include page="include/header.jsp" />

		<div class="container">
			<h1>Profile Updated</h1>

			Your profile has successfully been updated. Click <a
				href="dashboard.jsp">here</a> to return to the dashboard.
		</div>
	</div>
</body>
</html>