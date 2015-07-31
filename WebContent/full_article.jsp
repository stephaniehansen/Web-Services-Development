<%@page import="uts.wsd.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

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
	//Retrieve the Author object from the session
	Author author = (Author) session.getAttribute("author");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>

<jsp:include page="include/header.jsp" />

<%
	String fromUrl = request.getParameter("title");
	session.getAttribute("article");
	Articles articles = articlesApp.getArticles();
	Article article = articles.getArticle(fromUrl);

	if (article != null) {
%>
<c:set var="xmltext">
	<articles> 
		<article>
			<title><%=fromUrl%></title>
			<startDate><%=article.getStartDate()%></startDate> 
			<author><%=article.getAuthor()%></author>
			<fullText><%=article.getFullText()%></fullText> 
			<category><%=article.getCategory()%></category>
			<articleImage><%=article.getArticleImage()%></articleImage> 
		</article> 
	</articles>
</c:set>

<!-- Import articleFull.xsl -->
<c:import url="articleFull.xsl" var="xslt" />

<!-- Perform XSLT transformation -->
<x:transform xml="${xmltext}" xslt="${xslt}" />

<%  //Redirect to 404 page if article not found
	} else {
		//http://examples.javacodegeeks.com/enterprise-java/jsp/send-redirect-in-jsp-page
		response.sendRedirect("404.jsp");
	}
%>