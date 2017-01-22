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
	Website Template | Home :: w3layouts</title>
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
<!-- <style type="text/css">

.form-group input{
	width:50%;
}
</style> -->
<body>
	<!-- <!--header--> -->
	
	
<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="social">

				<ul>
					<li><a href="www.facebook.com"><i class="facebok"> </i></a></li>
					<li><a href="#"><i class="twiter"> </i></a></li>
					<li><a href="chaitra_honnavara"><i class="inst"> </i></a></li>
					<li><a href="#"><i class="goog"> </i></a></li>
					<c:choose>
						<c:when test="${pageContext.request.userPrincipal.name != null}">

							<li>
							<li><h4>
									<a>hello, ${pageContext.request.userPrincipal.name}</a>
								</h4></li>
							<li>
						</c:when>
					</c:choose>
					<div class="clearfix"></div>

				</ul>
			</div>

			
			<div class="clearfix"></div>
		</div>

	</div>
</div>
<div class="container">
	<div class="head-top">
		<div class="logo">
			<h1>
				<a href="index">Mattress</a>
			</h1>
		</div>
		<div class=" h_menu4">
			<ul class="memenu skyblue">
				
				<li><a class="color4" href="loginPage">LOGIN</a></li>
				<li><a class="color6" href="contact">CONTACT</a></li>

				<c:choose>
					<c:when test="${pageContext.request.userPrincipal.name != null}">
						<c:if test="${pageContext.request.userPrincipal.name == 'Admin'}">
							
							<li><a class="color2" href="<c:url value='/categories'/>">CATEGORY</a></li>

							<li><a class="color2" href="<c:url value="/products"/>">PRODUCT</a></li>
							<li><a class="color2" href="<c:url value="/suppliers"/>">SUPPLIER</a></li>



						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name != 'Admin'}">
							<li><a class="color2" href="<c:url value="/user/cart"/>">CART</a></li>





						</c:if>
					</c:when>

					<c:otherwise>



					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${pageContext.request.userPrincipal.name != null}">
						<li class="grid"><a class="color2"
							href="<c:url value="/j_spring_security_logout"/>">SIGN OUT</a>
					</c:when>
				<c:otherwise>
				</c:otherwise>
				</c:choose></ul>
				
				
				
				<div><ul>
				
		
				
				
				
				
				<div class=" h_menu4">
				<ul class="memenu skyblue">
				<c:forEach items="${categoryList}" var="category">
		
				<li class="grid"><a class="color2" href="${category.name}">${category.name}</a>
				
				
					  
				      	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<c:forEach items="${category.products}" var="product"><br>

						<li class="grid"><a class="color2" href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

					</c:forEach>

									</ul></c:forEach>	
								</div>							
							</div>
							
				
				
				
				
				
				
				
				
				
				
				
				
					
				
				</div>
			
	
		

			</ul><ul></ul>	
				</div>
			</div>
		</div>

			
		</div>

	</div>


</div>




<div class="clearfix"></div>

	<!-- <!-- header --> -->
	<div class="grow">
		<div class="container">
			<h2>CATEGORY</h2>
			
		</div>
	</div>
	
	
	<div class="col-md-4 left-account ">
					<a href="single"><img class="img-responsive " 
						src="images/category1.jpg" alt=""></a>
					
					<div class="clearfix"></div>
				</div>
	
	<!-- grow -->
	<!--content-->
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-8 account-top">


	
	

			<h4>ADD A CATEGORY</h4>

					<c:url var="addAction" value="/category/add"></c:url>

					<form:form action="${addAction}" commandName="category" >


						<div class="form-group">
							<c:choose>
								<c:when test="${!empty category.id}">

									<div class="form-group">
										<label for="name">ID</label>
										<div class="controls docs-input-sizes">
											<form:input placeholder="id" path="id" required="true"
												class="form-control" id="id" disabled="true" readonly="true" />
										</div>
									</div>

								</c:when>

								<c:otherwise>

									<div class="form-group">
										<form:input path="id" hidden="true" />
										<label for="id">ID</label>
										<div class="controls docs-input-sizes">
											<form:input placeholder="Id" path="id" required="true"
												class="form-control" id="id"
												title="id should contains 6 to 7 characters"
												patttern=".{6,7}" />
										</div>
									</div>

								</c:otherwise>
							</c:choose>

						</div>

						<div class="form-group">
							<form:input path="id" hidden="true" />
							<label for="name">Name</label>
							<div class="controls docs-input-sizes">
								<form:input placeholder="Name" path="name" required="true"
									class="form-control" id="name" />
							</div>
						</div>

						<div class="form-group">
							<label for="description">Description</label>
							<div class="controls docs-input-sizes">
								<form:input placeholder="Description" path="description"
									class="form-control" id="description" />
							</div>
						</div>



						<!-- <div class="form-group">
							<div class="controls docs-input-sizes"> -->
								<!--content-->
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-8 account-top">


	
							
								<c:if test="${!empty category.name}">

									<input type="submit" value="EDIT CATEGORY">
								</c:if>
								<c:if test="${empty category.name}">

									<input type="submit" value="ADD CATEGORY">
								</c:if>
							
						
					</form:form>
				
<br>

			
					<div class="all">
						<c:if test="${!empty categoryList}">
							
							<br>
							<table class="tg table-hover">
								<tr>
									<th width="120">ID</th>
									<th width="160"> NAME</th>
									<th width="160"> DESCRIPTION</th>
									<th width="80">EDIT</th>
									<th width="60">DELETE</th>
								</tr>
								<c:forEach items="${categoryList}" var="category">
									<tr>
										<td>${category.id}</td>
										<td>${category.name}</td>
										<td>${category.description}</td>
										<td><a class="color6"
											href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
										<td><a class="color6"
											href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
									</tr>
								</c:forEach>
							</table>
			</div>			</c:if>
			</div>			<br> <br> <br>
			</div>
			</div>
			</div>
			</div>
			
			</section>
			</div>
</div></div>

		</div>
		<!-- <!-- footer --> -->
		
		
<style>
p{text-align:"center"}
</style><div class="footer w3layouts">
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
		
		
		<!-- <!-- footer --> -->
		 
</body>
</html>
	