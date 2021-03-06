<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Spankys Raffle Sign up</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/form-elements.css">
<link rel="stylesheet" href="assets/css/style.css">
<script src="assets/js/jquery-1.11.1.min.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<script src='https://www.google.com/recaptcha/api.js'></script>

<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/retina-1.1.0.min.js"></script>
<script src="assets/js/scripts.js"></script>


<script>
	$(document).ready(function() {
		$('#btn-sub').click(function() {
			var val1 = $('#contact-email').value();
			window.alert(val1);
		});
	});
</script>

</head>

<body>

	<!-- Top menu -->
	<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#top-navbar-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->

		<!-- Top content -->
		<div class="top-content">

			<div class="inner-bg">
				<div class="container">
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2 text">
							<h1>
								<strong>Spankys Raffle</strong>
							</h1>
							<div class="description"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3 form-box">
							<div class="form-top">
								<div class="form-top-left">
									<h3>Sign Up</h3>
								</div>
								<div class="form-top-right">
									<i class="fa fa-envelope"></i>
								</div>
							</div>
							<div class="form-bottom contact-form">
								<form role="form" action="EmailSendingServlet" method="post">
									<div class="form-group">
										<label class="sr-only">Email</label> <input type="text"
											name="email" placeholder="Email"
											class="contact-email form-control" id="contact-email">
									</div>
									<div class="form-group">
										<label class="sr-only" for="contact-subject">Subject</label> <input
											type="text" name="recipient" placeholder="Verify e-mail"
											class="contact-email form-control" id="contact-password">
									</div>
									<div></div>
									<button align="center" type="submit" class="btn" id="btn-sub"
										name="submit_signup">Submit</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>


		<!-- Javascript -->



		<!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
</body>

</html>