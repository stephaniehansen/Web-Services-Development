<%@page import="uts.wsd.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>

<jsp:include page="include/header.jsp" />

<!-- Import articles.xml and articlelist.xsl -->
<c:import url="/WEB-INF/articles.xml" var="articles" />
<c:import url="articlelist.xsl" var="xslt" />

<!-- Perform XSLT transformation -->
<x:transform xml="${articles}" xslt="${xslt}" />

