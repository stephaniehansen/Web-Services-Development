<%@ page import="java.util.*"%>


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
<title>UTS News :: Post Article</title>
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
			<h1>Post Article</h1>

			<form name="input" action="post_article_action.jsp" method="post"
				enctype="multipart/form-data">
				<table>
					<tr>
						<td>Title
							<div id="asterisk">*</div>
						</td>
						<td><input type="text" name="title" required>
						</td>
					</tr>
					<tr>
						<td>Author
							<div id="asterisk">*</div>
						</td>
						<td><input type="text" name="author"
							value="<%=author.getName()%>" disabled>
						</td>
					</tr>
					<tr>
						<td>Start Date
							<div id="asterisk">*</div>
						</td>
						<td><input type="date" name="start_date" required>
						</td>
					</tr>
					<tr>
						<td>Category
							<div id="asterisk">*</div>
						</td>

						<td><select class="drop-down" name="category" required>
								<option value="breaking">Breaking</option>
								<option value="entertainment">Entertainment</option>
								<option value="lifestyle">Lifestyle</option>
								<option value="sport">Sport</option>

						</select>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="checkbox" name="lipsum" value="lipsum">Automatically
							generate text for this article<br>
					</tr>
					<tr>
						<td>Lead Text
							<div id="asterisk">*</div>
						</td>
						<td><textarea name="lead_text" rows="4" cols="50"
								maxlength="240" required></textarea>
						</td>
					</tr>
					<tr>
						<td>Full Text
							<div id="asterisk">*</div>
						</td>
						<td><textarea name="full_text" rows="8" cols="50" required></textarea>
						</td>
					</tr>
					<tr>
						<!-- Fix below-->
						<td>Visibility
							<div id="asterisk">*</div>
						</td>
						<td><input type="radio" name="visibility" value="public"
							required>Shown to public<br> <input type="radio"
							name="visibility" value="restricted">Shown to authors</td>

					</tr>
					<tr>
						<td>Article Image:</td>
						<td><input type="file" name="filename">
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Post Article"
							class="proceed-button"> <a href="dashboard.jsp"><input
								type="button" value="Cancel" class="cancel-button">
						</a>
						</td>
					</tr>


				</table>
			</form>


		</div>
	</div>

</body>
</html>