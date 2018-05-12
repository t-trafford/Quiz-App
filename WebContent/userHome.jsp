<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8" />
<title>User Home</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />

<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Poppins%3A400%2C500%2C600%2C700%2C300&#038;ver=4.8.3'
	type='text/css' media='all' />
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Montserrat%3A400%2C700&#038;ver=4.8.3'
	type='text/css' media='all' />

</head>

<body class="home blog">

	<%
		if (session.getAttribute("username") == null) {	
			response.sendRedirect("Login.jsp");
		}
	%>

	<div class="body-content container">
		<jsp:include page="./userHeader.jsp" />

		<div class="row home_content_wrapper">
			<div class="feature_content col-md-12">
				<div class="two_col-div row">
					<div
						style="font-size: 30px; color: #609084; margin-top: 10%; margin-bottom: 10%; text-align: center">
						<b>Welcome to Self-Learning App </b>
					</div>

				</div>

			</div>
		</div>
	</div>

</body>
</html>
