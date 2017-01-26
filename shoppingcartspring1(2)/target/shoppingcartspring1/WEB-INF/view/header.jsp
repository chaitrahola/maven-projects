<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<%-- <c:forEach items="${categoryList}" var="category"> --%>
		
				<li class="grid"><a class="color2" href="${category.name}">${category.name}</a>
				
				
				
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
			
	
		

			</ul><ul></ul>	<%-- <%@include file="/WEB-INF/view/code.jsp" %> --%>
					 
				</div>
			</div>
		</div>

			
		</div>

	</div>


</div>




<div class="clearfix"></div>

