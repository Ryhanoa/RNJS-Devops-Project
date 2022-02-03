<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Movies</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">
</head>
<a href="<%=request.getContextPath()%>/MovieServlet/dashboard" class="btn btn-success" style = "position:relative; left:5px; top:2px" >Movie Management</a>
<body>
	<h1>Add Movies!</h1>
	<form action="AddMovieServlet" method="post">
		Movie Name: <input type="text"name="movieName">
		Movie poster: <input type="text" name="movieImage"> 
		Genre: <input type="text" name="genre">
		Description: <input type="text" name="description">		
		Age Rating: <input type="text" name="ageRating">		
		Trailer: <input type="text" name="trailer"> 		
		<input type="submit" value="Submit" />
	</form>
</body>
</html>