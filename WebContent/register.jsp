<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News :: Register</title>
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
				/*Set field value to empty if the respective parameter is null.
				This is for the purpose of returning a user to this page if their
				registration could not be processed (e.g. email already registered)*/
				
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String dob = request.getParameter("dob");
				String bio = request.getParameter("bio");
				String profileImage = request.getParameter("filename");
				String error = request.getParameter("error");
				if (name == null) {
					name = "";
				}
				if (email == null) {
					email = "";
				}
				if (dob == null) {
					dob = "";
				}
				if (bio == null) {
					bio = "";
				}
				if (error == null) {
					error = "";
				}
			%>

			<h1>Register</h1>

			<form name="input" action="register_action.jsp" method="post"
				enctype="multipart/form-data">
				<table>
					<tr>
						<td>Full Name
							<div id="asterisk">*</div>
						</td>
						<td><input type="text" name="name" value="<%=name%>" required>
						</td>
					</tr>
					<tr>
						<td>Email
							<div id="asterisk">*</div>
						</td>
						<td>
							<%if(error.equals("alreadyRegistered"))%> <p id ="error_message">Email address is already registered</p>
							<input type="email" name="email" value="<%=email%>" required>
						</td>
					</tr>
					<tr>
						<td>Password
							<div id="asterisk">*</div>
						</td>
						<td>
							<%if(error.equals("passwordError"))%> <p id ="error_message">Passwords do not match</p>
							<input type="password" name="password" required></td>
						</td>
					</tr>
					<tr>
						<td>Confirm Password
							<div id="asterisk">*</div>
						</td>
						<td><input type="password" name="confirm_password" required>
						</td>
					</tr>
					<tr>
						<td>Date of Birth
							<div id="asterisk">*</div>
						</td>
						<td><input type="date" min="1905-01-01" max="2010-01-01"
							name="dob" value="<%=dob%>" required>
						</td>
					</tr>
					<tr>
						<td>Biography
							<div id="asterisk">*</div>
						</td>
						<td><textarea name="bio" rows="8" cols="50" required><%=bio%></textarea>
						</td>
					</tr>
					<tr>

						<td>Profile Picture</td>
						<td><input type="file" name="filename">
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Register"
							class="proceed-button">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>