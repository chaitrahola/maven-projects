
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<title>Mattress A Ecommerce Category Flat Bootstrap Responsive
	Website Template | Register :: w3layouts</title>
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
	
	 <%@include file="header.jsp"%>  
	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>SHIPPING DETAILS</h2>
		</div>
	</div>
	<!-- grow -->
	<!--content-->
	<div class=" container">
		<div class=" shipping">
			<div class="error" style="color: #ff0000;"><%-- ${usernameError}${emailError}${userPhoneError } --%></div>


			<c:if test="${not empty message}">
				<div class="error" style="color: #ff0000;">${message}<%-- ${usernameError} --%></div>
			</c:if>
			

			

			<form:form action="shippingdetails" method="post" commandName="shipping">
				<div class="col-md-6 register-top-grid">

					<!-- <h3>Personal infomation</h3> -->
					
					<div><br>
						<span>User Name</span>
						
						<form:input type="text" placeholder="Enter User name"
							path="username" />
					</div>
					<div>
						
						<span>Pin Code</span>
											<form:input type="text" placeholder="Enter pincode"
							path="pincode" />
					</div>
					<div>
						
						<span>Address</span>
											<form:input type="text" placeholder="Enter address"
							path="address" />
					</div>
					<div>
						
						<span>Landmark</span>
						
						<form:input type="text" placeholder="Enter landmark"
							path="landmark" />
					</div>
					<div>
						
						<span>City</span>
						
						<form:input type="text" placeholder="Enter city"
							path="city" />
					</div>
					<div>
						
						<span>State</span>
											<form:input type="text" placeholder="Enter state"
							path="state" />
					</div>
					<div>
					
						<span>User Phone </span>
						<form:input type="text" placeholder="Enter userPhone number"
							path="userPhone" />
					</div>
					
				
				<div class="col-md-6 register-bottom-grid">
<input type="submit" value="CONFIRM">
				</div>
<br>
					
					

				</div>
				<div class="clearfix"></div>
			</form:form>
		</div>
	</div>
	<!--//content-->
	<%@include file="footer.jsp"%>
</body>
</html>
