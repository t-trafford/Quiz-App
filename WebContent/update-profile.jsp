<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8" />
<title>StarLabs: Admin</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />

<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Poppins%3A400%2C500%2C600%2C700%2C300&#038;ver=4.8.3'
	type='text/css' media='all' />
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat%3A400%2C700&#038;ver=4.8.3'
	type='text/css' media='all' />
<link href="css/jquery-ui-1.10.3.custom.css" rel="stylesheet"
	type="text/css" />
<script src="js/jquery-1.8.2.js" type="text/javascript"></script>
<script src="js/jquery-ui-1.10.3.custom.js" type="text/javascript"></script>


<script type="text/javascript">
����$(document).ready(function() {
	$.ajax({
		type : 'GET',
		url : 'UpdateProfileServlet',
		success : function(response) {
			if (response != null)
				$('#profile').html(response);
			else
				$('#msg').html("No Requests");
		},
		failure : function(error) {
			console.log(error)
		}
	});
});
</script>
</head>

<body class="home blog">

	<%
		if (session.getAttribute("username") == null) {
			response.sendRedirect("Login.jsp");
		}
	%>
	<div class="body-content container">
		<jsp:include page="./userHeader.jsp" />

		<div class="row home_content_wrapper" style="text-align: left;">
			<div class="feature_content col-md-12">
				<div class="two_col-div row">
				<div><h5 style="color: red;">
						 ${msg} 
					</h5></div>
			
						<form action="UpdateProfileServlet" method="post">
						
						<div class="login-fields" id="profile"></div>
						<div class="login-actions">
						<a href="update-profile.jsp"><input type="button" class="btn btn-primary" value="Reset" name="cancel"></a>
						<button class="btn btn-primary" style="background-color: #1d3c50; color: white;">Update</button></div>
				
				</form>
            				<c:remove var="message" scope="session" />
	
	</div>
</div>
</div>
</body>
</html>
