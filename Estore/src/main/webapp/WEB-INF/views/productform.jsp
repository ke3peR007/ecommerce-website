<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Form</title>
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
<c:url value="/admin/addproduct" var="url"></c:url>
<%--what is the model attribute to which we have assigned a new product obj 
in handler method, we created a new product object and assigned the object to
the model attribute product

Product p=new Product();
model.addAttribute("product",p)
--%>
<form:form action="${url }" modelAttribute="product" enctype="multipart/form-data">
<pre>
Enter Productname : <form:input path="productname"/><form:errors path="productname" cssStyle="color:red"></form:errors><%--product.getPname() --%>
Enter description : <form:input path="description"/><form:errors path="description" cssStyle="color:red"></form:errors><%--product.getDescription() --%>
Enter price       : <form:input path="price"/><form:errors path="price" cssStyle="color:red"></form:errors>   <%--product.getPrice() --%>
Enter quantity    : <form:input path="quantity"/><form:errors path="quantity" cssStyle="color:red"></form:errors>   <%--product.getQuantity() --%>
Select Category   : <form:select path="category.categoryid">	
<c:forEach items="${categories }" var="c"><%--model.addAttribute("categories",categories), items refers the model attribute categories --%>
<form:option value="${c.categoryid }">${c.categoryname}</form:option>
</c:forEach>
</form:select>
Upload image      : <form:input path="image" type="file"/>



<input type="submit" value="Add Product">
<%--once you enter the data in the input fields, it will call the setter methods
and set the values for all the properties --%>
</pre>

</form:form>
</div>
</body>
</html>