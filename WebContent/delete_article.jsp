<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.*"%>

<% String filePath = application.getRealPath("WEB-INF/articles.xml"); %>

<!-- Load the ArticlesApplication JavaBean -->
<jsp:useBean id="articlesApp" class="uts.wsd.ArticlesApplication"
	scope="application">
	<jsp:setProperty name="articlesApp" property="filePath"
		value="<%=filePath%>" />
</jsp:useBean>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News :: Delete Article</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
<body>

<div class="wrapper"><jsp:include page="include/header.jsp" />

<div class="container">
<h1>Delete Article</h1>

<%
//Retrieve and display all of the articles
Articles articles = articlesApp.getArticles();
for(Article article : articles.getList())
{
%>

<ul>
	<li><b>Title: </b><%=article.getTitle()%> [<a
		href="delete_article_action.jsp?title=<%=article.getTitle()%>"><span>Delete</span></a>]</li>

</ul>
<%
}
 %>
</div>
</div>
</body>
</html>

