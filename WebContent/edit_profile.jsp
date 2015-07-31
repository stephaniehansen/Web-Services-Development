<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="uts.wsd.*"%>

<%
	//Retrieve the Author object from the session
	Author author = (Author) session.getAttribute("author");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News :: Edit Profile</title>
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
			<h1>Edit Profile</h1>
			<form name="input" action="edit_profile_action.jsp" method="post">

				<table>
					<tr>
						<td>Full Name
							<div id="asterisk">*</div>
						</td>
						<td><input type="text" name="name"
							value="<%=author.getName()%>" required>
						</td>
					</tr>
					<tr>
						<td>Email
							<div id="asterisk">*</div>
						</td>
						<td><input type="text" name="email"
							value="<%=author.getEmail()%>" disabled>
						</td>
					</tr>
					<tr>
						<td>Date of Birth
							<div id="asterisk">*</div>
						</td>
						<td><input type="date" name="dob"
							value="<%=author.getDob()%>" required>
						</td>
					</tr>
					<tr>
						<td>Biography
							<div id="asterisk">*</div>
						</td>
						<td><textarea name="bio" rows="8" cols="50" required><%=author.getBio()%></textarea>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Save" class="proceed-button">
							<a href="dashboard.jsp"><input type="button" value="Cancel"
								class="cancel-button">
						</a>
						</td>
					</tr>


				</table>
			</form>
		</div>
</body>
</html>