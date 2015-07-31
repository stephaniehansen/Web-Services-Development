<%@page
	import="java.io.IOException,java.io.PrintWriter,com.oreilly.servlet.MultipartRequest"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.*"%>
<%
	String filePath = application.getRealPath("WEB-INF/articles.xml");
%>

<!-- Load the ArticlesApplication JavaBean -->
<jsp:useBean id="articlesApp" class="uts.wsd.ArticlesApplication"
	scope="application">
	<jsp:setProperty name="articlesApp" property="filePath"
		value="<%=filePath%>" />
</jsp:useBean>


<%
	String title = request.getParameter("title");

	//Retrieve the Article from the session
	session.getAttribute("article");
	Article article = articlesApp.getArticles().getArticle(title);

	//Remove article from the articles list
	articlesApp.getArticles().removeArticle(article);
	articlesApp.updateFile();
	
	//Retrieve the Author object from the session
	Author author = (Author) session.getAttribute("author");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UTS News :: Delete Article</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="wrapper"><jsp:include page="include/header.jsp" />

		<div class="container">
			<h1>Article Deleted</h1>
			<p>
				The article titled "<b><%=title%></b>", has been removed. <a
					href="dashboard.jsp">Click here</a> to return to the Dashboard</a>
			</p>
		</div>
	</div>

</body>
</html>