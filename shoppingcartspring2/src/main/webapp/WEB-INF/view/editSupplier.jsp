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

	<li><a class="active" href="<c:url value="/categories"/>">CATEGORY</a></li>

</ul>
</head>
<body>

	
	<!-- <a href="#"><img 
						src="images/category1.jpg" alt=""></a> 
 -->
		</div>
	</div>
	
	<div class="col-md-4 left-account ">
					 
						<!-- <img src="src/main/webapp/images/category1.jpg" alt="" style="width:304px;height:228px;">
					 -->
					<div class="clearfix"></div>
				</div>
	
	<!-- grow -->
	<!--content-->
	 <div class="container">
		<div class="account">
			<!-- <<div class="account-pass">
				<div class="col-md-8 account-top"> -->
 
 
	
	

			<h3>EDIT SUPPLIER</h3>
			<br>
				<c:url var="addAction" value="/supplier/add"></c:url>
			<c:url var="addAction" value="/supplier/add"></c:url>
			<form:form action="${addAction}" commandName="supplier">


				<div class="form-group">
					<c:choose>
						<c:when test="${!empty supplier.id}">

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
										title="id should contains 6 to 7 characters" patttern=".{6,7}" />
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
					<label for="address">Address</label>
					<div class="controls docs-input-sizes">
						<form:input placeholder="Address" path="address"
							class="form-control" id="address" />
					</div>
				</div>



				<div class="form-group">
					<div class="controls docs-input-sizes">
						<c:if test="${!empty supplier.name}">

							<button type="submit" class="btn btn-template-main pull-left">
								<i class="fa fa-user-md"></i> Edit Supplier
							</button>
						</c:if>
						<c:if test="${empty supplier.name}">

							<input type="submit" value="ADD SUPPLIER">
							<br>
						</c:if>
					</div>
				</div>
			</form:form>
			
			


			<c:if test="${!empty supplierList}">

				<div class="row">
					<h3>SUPPLIER LIST</h3><br>
					<table class="tg">
						<tr>
							<th width="120"> ID</th>
							<th width="160">NAME</th>
							<th width="160">ADDRESS</th>
							<th width="60">EDIT</th>
							<th width="60">DELETE</th>
						</tr>
						<c:forEach items="${supplierList}" var="supplier">
							<tr>
								<td>${supplier.id}</td>
								<td>${supplier.name}</td>
								<td>${supplier.address}</td>
								<td><a class="color2"
									href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
								<td><a
									href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
					
				</div>
			</c:if>
			
		<br> <br> <br>


		</div>
	</div></div></div>
	

</body>
</html>

			