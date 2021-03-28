<!DOCTYPE html>
<html>
<head>

	<title>OnlineStreaming</title>

	<!-- For-Mobile-Apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //For-Mobile-Apps -->

	<!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Default-JavaScript-File --> <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
	<div class="container">

		<div class="tab">

			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function () {
						$('#horizontalTab').easyResponsiveTabs({
							type: 'default', //Types: default, vertical, accordion
							width: 'auto', //auto or any width like 600px
							fit: true,   // 100% fit in a container
							closed: 'accordion', // Start closed if in accordion view
							activate: function(event) { // Callback function if tab is switched
								var $tab = $(this);
								var $info = $('#tabInfo');
								var $name = $('span', $info);
								$name.text($tab.text());
								$info.show();
							}
						});

						$('#verticalTab').easyResponsiveTabs({
							type: 'vertical',
							width: 'auto',
							fit: true
						});
					});
				</script>

				<div class="tabs">

					<div class="tab-left">
						<ul class="resp-tabs-list">
							<li class="resp-tab-item">Sign In Form</li>
							<li class="resp-tab-item">Sign Up Form</li>
						</ul>
					</div>

					<div class="tab-right">
						<div class="resp-tabs-container">
							<div class="tab-1 resp-tab-content">
								<div class="w3l-sign-in">
									<h3>Sign In Form</h3>
									<form action="check.php" method="post">
										<input type="text" class="name" name="username" placeholder="Username" required="">
										<input type="password" class="password" name="password" placeholder="Password" required="">
										<input type="hidden" name="login" value="login">
										<ul class="w3agile">
											<li>
												<input type="checkbox" id="brand1" value="">
												<label for="brand1"><span></span>Remember me</label>
											</li>
										</ul>
										<input type="submit" value="Sign In">
										<div class="clear"></div>	
									</form>
								</div>
							</div>
							<div class="tab-1 resp-tab-content">
								<div class="register agileits">
								<h3>Sign Up Form</h3>
									<form action="check.php" method="post">
										<input type="text" class="name" name="username" placeholder="Username" required="">
										<input type="password" class="password" name="password" placeholder="Password" required="">
										<input type="password" class="password" name="confirm password" placeholder="Confirm Password" required="">
										<input type="text" class="email" name="email" pattern="/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/" placeholder="Email" required="">
										<input type="text" class="email" name="phone" pattern="[0-9]{10}" placeholder="Mobile Number" required="">
										<input type="text" class="location" name="location" placeholder="Your Location" required="">
										<input type="hidden" name="register" value="register">
										<input type="submit" value="Sign Up">
									</form>
								</div>
							</div>
							</div>
						</div>
					</div>

					<div class="clear"></div>

				</div>

			</div>

		</div>

	</div>

	<div class="footer">
		
	</div>

</body>
</html>