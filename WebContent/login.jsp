<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UTS News :: Login</title>
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
			<h1>Login</h1>

			<form name="input" action="login_action.jsp" method="post">

				<table>
					<tr>
						<td>Email:</td>
						<td><input type="text" name="email">
						</td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="password">
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Login" class="proceed-button">
						</td>
					</tr>

				</table>
			</form>

		</div>
	</div>

</body>
</html>