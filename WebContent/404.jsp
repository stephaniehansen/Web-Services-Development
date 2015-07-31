<%@ page isErrorPage="true"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News :: Page Not Found</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
<body>
	<div class="wrapper">
		<jsp:include page="include/header.jsp" />
		<div class="container">
			<h1>Uh oh, something went wrong...</h1>
			<p>
				Sorry about that. How about we take you <a href="index.jsp"> back to the homepage</a>?
			</p>
		</div>
	</div>
</body>
</html>

