<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<h1>Register</h1>
	<form action="Signup" method="post">
		Username: <input type="text" name="username"> 
		Password: <input type="password" name="password"> 
		Email: <input type="email" name="email"> 
		Contact: <input type="number" name="contact">
		Address: <input type="text" name="address">
		<input type="submit" value="submit" />
	</form>
</body>
</html>
