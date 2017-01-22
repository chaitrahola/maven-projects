
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
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

<!DOCTYPE html>
<html>
<head>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not (.active ) {
	background-color: #111;
}

.active {
	background-color: #4CAF50;
}
p{text-align:"center"}
</style>
</head>


<ul>

	<li><a class="active" href="<c:url value="/products"/>">PRODUCT</a></li>

</ul>
</head>
<body>

	<h3>PRODUCT DETAILS</h3>
	<div id="all">
		<div id="heading-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="col-md-5">
							<ul class="breadcrumb">
								<%-- <li><a href="<c:url value="/"/>">Home</a></li> --%>
								<li>${selectedProduct.name}</li>
							</ul>

						</div>
					</div>

				</div>
			</div>
		</div>
		<c:if test="${!empty selectedProduct.name}">
			<section class="bar background-gray no-mb padding-big text-center-sm">

				<div class="container" ng-app="addToCartApp">
					<div class="row">
						<div class="col-md-4">
							<!-- <h2 class="text-uppercase">Product details</h2> -->
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




								<br> <br>
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
								src="<c:url value="/resources/img/productImages/${selectedProduct.id}.jpg"/>" />
						</div>
					</div>
				</div>
			</section>
		</c:if>


</div>
</div>
</div>
	</div>
	
<div class="footer w3layouts">
	<div class="container">
		<div class="footer-top-at w3">

			
		</div>
		<div class="col-md-3 amet-sed agileits-w3layouts">
			<h4>CONTACT US</h4>
			<p>NIIT Jaynagar,Banglore</p>
			<p>Mobile: +91 7760256516</p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<div class="footer-class w3-agile">
	<p>
		© Mattress. All Rights Reserved | Designed by <a
			href="http://niittv.com/" target="_blank">CHAITRA HO.LA</a>
	</p>
</div>
</body>
</html>
