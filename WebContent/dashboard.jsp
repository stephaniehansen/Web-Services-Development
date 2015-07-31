<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%
	//Retrieve the Author object from the session
	Author author = (Author) session.getAttribute("author");
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News :: Dashboard</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<body>
	<div class="wrapper">
		<jsp:include page="include/header.jsp" />
		<div class="container">
			<h1>Dashboard</h1>
			<%
				//If a non logged-in user is trying to view this page, display an error
				if (author == null) {
			%>
			<p>
				You must be <a href="login.jsp">logged in</a> to view this page
			</p>
			<%
				} else {
			%>
			<div id="welcome">
				Welcome,
				<%=author.getName()%>
				&lt;<%=author.getEmail()%>&gt;
			</div>

			<div class="dashboard-buttons">
				<div class="column-left">
					<a href="index.jsp"><i class="fa fa-eye"><p
								id="dashboard-label">View Articles</p>
					</i>
					</a>
				</div>
				<div class="column-center">
					<a href="post_article.jsp"><i class="fa fa-pencil"><p
								id="dashboard-label">Post Article</p>
					</i>
					</a>
				</div>
				<div class="column-right">
					<a href="delete_article.jsp"><i class="fa fa-trash-o"><p
								id="dashboard-label">Delete Article</p>
					</i>
					</a>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>
