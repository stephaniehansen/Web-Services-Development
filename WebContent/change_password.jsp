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
<title>UTS News :: Change Password</title>
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
			<%
				/*If the user has not been returned to this page from receiving an error
				set the error to an empty string*/
				String error = request.getParameter("error");
				if (error == null) {
					error = "";
				}
			%>

			<h1>Change Password</h1>

			<%
				if (error.equals("passwordError"))
			%>
			<p id="error_message">Passwords do not match</p>
			<br>
			<form name="input" action="change_password_action.jsp" method="post">

				<table>

					<tr>
						<td>New password:</td>
						<td><input type="password" name="password" required>
						</td>
					</tr>
					<tr>
						<td>Confirm password:</td>
						<td><input type="password" name="confirm_password" required>
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
	</div>
</body>
</html>