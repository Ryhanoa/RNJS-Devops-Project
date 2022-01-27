<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Movies</title>
</head>
<body>
	<h1>Add Movies!</h1>
	<form action="AddMovieServlet" method="post">
		Movie Name: <input type="text"name="movieName">
		Movie poster: <input type="text" name="movieImage"> 
		Trailer: <input type="text" name="trailer"> 
		Description: <input type="text" name="description">		
		Genre: <input type="text" name="genre">
		Age Rating: <input type="text" name="ageRating">				
		<input type="submit" value="Submit" />
	</form>
</body>
</html>