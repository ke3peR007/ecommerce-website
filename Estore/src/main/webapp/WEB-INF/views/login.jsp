<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: #8e7d79;
  color: white;
  text-align: center;
}
</style>
</head>
<body>

	<%@include file="header.jsp" %>
		<div class="container">
		<b>LOGIN PAGE</b><br>
		<span style="color:red">${loginError }</span>
		<span>${logoutSuccess }</span>
		<form action="<c:url value='/j_spring_security_check'></c:url>" method="post">
		<pre> 
		Enter email    : <input type="email" name="j_username">
		Enter password : <input type="password" name="j_password">
		<input type="submit" value="Login">
		</pre>
		</form>
		</div>
	
	<%@include file="footer.jsp" %>


</body>
</html>