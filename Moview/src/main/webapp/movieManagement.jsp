<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie Management</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">
</head>
<body>
<div class="row">
<div class="container">
<h3 class="text-center">All Movies</h3>
<hr>
<div class="container text-left">
<!-- Add new movie button redirects to the addMovie.jsp page -->
<a href="<%=request.getContextPath()%>/addMovie.jsp" class="btn btn-success">Add New Movie</a>
</div>
<br>
<!-- Create a table to list out all current movies information -->
<table class="table">
<thead>
<tr>
<th>Movie Name</th>
<th>Movie Image</th>
<th>Genre</th>
<th>Description</th>
<th>Age Rating</th>
<th>Trailer</th>
</tr>
</thead>
<!-- Pass in the list of movies receive via the Servlet’s response to a loop
-->
<tbody>
<c:forEach var="movie" items="${listMovies}">
<!-- For each movie in the database, display their
information accordingly -->
<tr>
<td>
<c:out value="${movie.movieName}" />
</td>
<td>
<img  height="100px" width="200px" src="<c:out value="${movie.movieImage}"/>"/>
</td>
<td>
<c:out value="${movie.genre}" />
</td>
<td>
<c:out value="${movie.description}" />
</td>
<td>
<c:out value="${movie.ageRating}" />
</td>
<td>
<c:out value="${movie.trailer}" />
</td>
<!-- For each movie in the database, Edit/Delete
buttons which invokes the edit/delete functions -->
<td>
<a href="edit?id=<c:out value='${movie.id}'
/>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
<a href="delete?id=<c:out
value='${movie.id}' />">Delete</a>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>
</body>
</html>