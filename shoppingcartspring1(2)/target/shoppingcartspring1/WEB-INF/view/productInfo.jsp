<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
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

<title>Mattress A Ecommerce Category Flat Bootstrap Responsive
	Website Template | Products :: w3layouts</title>
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
	<%@include file="header.jsp"%>
	<!-- products -->
	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Products</h2>
		</div>
	</div>	<div id="all">
		<div id="heading-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1>Product details</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb">
							<li><a href="<c:url value="/"/>">Home</a></li>
							<li>${selectedProduct.name}</li>
						</ul>

					</div>
				</div>
			</div>
		</div>
		<c:if test="${!empty selectedProduct.name}">
			<section class="bar background-gray no-mb padding-big text-center-sm">

				<div class="container" ng-app="addToCartApp">
					<div class="row">
						<div class="col-md-4">
							<h2 class="text-uppercase">Product details</h2>
							<p>
								<br>${selectedProduct.id} <br>${selectedProduct.name}
								<br>${selectedProduct.description} <br>Rs.${selectedProduct.price}
								<br>${selectedProduct.category.name} <br>${selectedProduct.supplier.name}

								<c:if
									test="${pageContext.request.userPrincipal.name != 'Admin'}">
									<p ng-controller="addToCartCtrl">
										<a href="<c:url value="${url}" />" class="btn btn-primary">Back</a>
										<c:if
											test="${pageContext.request.userPrincipal.name  != 'Admin'}">
											<a href="#" class="btn btn-primary"
												ng-click="addItemToCart('${selectedProduct.id}')"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart
											</a>

											<a href="<spring:url value="/user/cart"/>"
												class="btn btn-primary"><span
												class="glyphicon glyphicon-hand-right"></span>View Cart</a>
										</c:if>
									</p>
								</c:if>
								<script src="<c:url value="/resources/js/ordercontroller.js"/>"></script>




								<br>
								<br>
								<%-- <button type="button"
									ng-click="addItemToCart('${selectedProduct.id}')"
									class="btn btn-template-main">Add to Cart</button>
								<br>
								<br>
								<button class="btn btn-template-main">Buy</button> --%>
								<br>
							</p>
						</div>
						<div class="col-md-8 text-center">
							<img alt=""
								src="<c:url value="/resources/img/productImages/${selectedProduct.id}.png"/>" />
						</div>
					</div>
				</div>
			</section>
		</c:if>

		<%@include file="/WEB-INF/view/footer.jsp"%>

	</div>
	<!-- /#all -->




	<!-- #### JAVASCRIPT FILES ### -->
	<%-- <%@include file="/WEB-INF/views/scriptfiles.jsp"%> --%>
</body>
</html>
