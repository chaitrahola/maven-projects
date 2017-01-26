<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>

<body>

<div data-role="page">
  <div data-role="header">
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-home ui-btn-icon-left">PRODUCT</a>
    <h1>PRODUCT DETAILS</h1>
    
  </div>

  <!-- grow -->
	<div class="grow">
		<div class="container">
			
		</div>
	</div>
	<!-- grow -->
	
	<!-- LOOK HERE -->


			<h3>PRODUCT DETAILS</h3>
	<div id="all">
		<div id="heading-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						 <h1>${selectedProduct.name}</h1>
					</div>
					<div class="col-md-5">
						
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




								<br>
								<br>
								<%-- <button type="button"
									ng-click="addItemToCart('${selectedProduct.id}')"
									class="btn btn-template-main">Add to Cart</button>
								<br>
								
								<button class="btn btn-template-main">Buy</button>  --%>
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

  <div data-role="footer" style="text-align:center;">
    
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-left">View More Products</a>
    
  </div>

<%@include file="/WEB-INF/view/scriptfiles.jsp"%>
</body>
</html>
