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
<c:url value="/admin/updateproduct" var="url"></c:url>
<form:form action="${url }" modelAttribute="product" enctype="multipart/form-data">
<pre>
<form:hidden path="id"/>
Enter Productname : <form:input path="productname"/><%--product.getPname() --%>
Enter description : <form:input path="description"/><%--product.getDescription() --%>
Enter price       : <form:input path="price"/>      <%--product.getPrice() --%>
Enter quantity    : <form:input path="quantity"/>   <%--product.getQuantity() --%>
Select Category   : <form:select path="category.categoryid">	
<c:forEach items="${categories }" var="c"><%--model.addAttribute("categories",categories), items refers the model attribute categories --%>
<form:option value="${c.categoryid }">${c.categoryname}</form:option>
</c:forEach>
					</form:select>  
Upload Image      : <form:input path="image" type="file"/>



<input type="submit" value="Update Product">
<%--once you enter the data in the input fields, it will call the setter methods
and set the values for all the properties --%>
</pre>

</form:form>
</div>


</body>
</html>