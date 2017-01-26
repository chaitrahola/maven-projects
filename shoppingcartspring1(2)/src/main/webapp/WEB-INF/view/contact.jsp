<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<title>Mattress A Ecommerce Category Flat Bootstrap Responsive</title>
<link href="resource/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resource/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="resource/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<link href="resource/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="resource/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="resource/js/simpleCart.min.js">
	
</script>
</head>
<body>
	<!--header-->
	<%@ include file="header.jsp"%>

	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Contact</h2>
			<%-- <c:choose>
<c:when test="${pageContext.request.userPrincipal.name != null}">							
			<li class="grid"><a class="color2" href="<c:url value="/j_spring_security_logout"/>">SIGN OUT</a>
			</li></c:when>
			</c:choose>
							 --%>
		</div>
	</div>

	<!-- grow -->
	<!--content-->
	<div class="contact">

		<div class="container">
			<div class="contact-form">

				<div class="col-md-8 contact-grid">
					<form action="#" method="post">
						<input type="text" value="Name" onfocus="this.value='';"
							onblur="if (this.value == '') {this.value ='Name';}"> <input
							type="text" value="Email" onfocus="this.value='';"
							onblur="if (this.value == '') {this.value ='Email';}"> <input
							type="text" value="Subject" onfocus="this.value='';"
							onblur="if (this.value == '') {this.value ='Subject';}">

						<textarea cols="77" rows="6" value=" " onfocus="this.value='';"
							onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
						<div class="send">
							<input type="submit" value="Send">
						</div>
					</form>
				</div>
				<div class="col-md-4 contact-in">

					<div class="address-more">
						<h4>Address</h4>
						<p>3rd Block </p>
						<p>Jaynagar ,</p>
						<p>Banglore-560011.</p>
					</div>
					<div class="address-more">
						<h4>Address1</h4>
						<p>Mobile:7760256516</p>
						<p>Fax:190-4509-494</p>
						<p>
							Email:<a href="mailto:chaitrahola@gmail.com">
							chaitrahola28@gmail.com</a>
						</p>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
			<div class="map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>
			</div>
		</div>

	</div>
	<!--//content-->
	<%@ include file="footer.jsp"%>
</body>
</html>
