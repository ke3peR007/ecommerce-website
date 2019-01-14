<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="header.jsp" %>

	<div class="container">
		<b>Product Details</b><br>
		<br>
			
			<img src="<c:url value="/resources/images/${productAttr.id}.png"></c:url>" height="50px" width="50px"><br>
			<b>Product Name  :</b> ${productAttr.productname}<br>
			<b>Description   :</b>${productAttr.description}<br>
			<b>Price         :</b>${productAttr.price}<br>
			<b>In Stock      :</b>${productAttr.quantity}<br>
			<b>Category		 :</b>${productAttr.category.categoryname }<br>
			<security:authorize access="hasRole('ROLE_USER')">
				<form action="<c:url value='/cart/addtocart/${ productAttr.id}'></c:url>" >
				Enter required units<br>
				<input type="number" name="requestedQuantity" min="1"><br>
				<input type="submit" class="btn btn-lg btn-info" value="Add To Cart"><br>
				</form> 
			</security:authorize>

		
		<a href="<c:url value='/all/getallproducts'></c:url>">Previous Page</a>
	</div>
</body>
</html>