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

<%  //Retrieve the object from the session
	Article article = (Article) session.getAttribute("article");
	Author author = (Author) session.getAttribute("author");
	
    /*Code to get parameters from multipart form - adapted from: 
    http://webideaworld.blogspot.in/2013/04/woking-with-enctypemultipartform-data.html*/
	response.setContentType("text/html");
	PrintWriter pw = response.getWriter();
	String realPath = getServletContext().getRealPath("/images/articles"); 
	MultipartRequest m = new MultipartRequest(request, realPath);

	//Retrieve the values from the form inputs
	String articleImage = m.getFilesystemName("filename");
	String title = m.getParameter("title");
	String startDate = m.getParameter("start_date");
	String category = m.getParameter("category");
	String leadText = m.getParameter("lead_text");
	String fullText = m.getParameter("full_text");
	String visibility = m.getParameter("visibility");
	String bio = m.getParameter("bio");
	String authorName = author.getName();

	//If an article image has not been uploaded, set the image to default placeholder
	if (articleImage == null) {
		articleImage = "../default.jpg";
	}

	//Add new Article
	articlesApp.getArticles().addArticle(
			new Article(title, authorName, startDate, category,
					leadText, fullText, visibility, articleImage));
	
	//Update the articles.xml file
	articlesApp.updateFile();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UTS News :: Article Posted</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="wrapper"><jsp:include page="include/header.jsp" />

		<div class="container">


			<h1>Article Posted</h1>

			<p>
				You have successfully posted the article titled, "<b><%=title%></b>".
				<a href="dashboard.jsp">Click here</a> to return to the Dashboard</a>
			</p>


		</div>
	</div>

</body>
</html>