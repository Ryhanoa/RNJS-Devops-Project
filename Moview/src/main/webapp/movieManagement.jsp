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
	
	<style>
	.cardTopDiv{
		display: flex;
		flex-direction: row;
		margin-bottom: 10px;
	}
	
	.cardLeftDiv {
		display: flex;
		flex-direction: column;
		margin-right: 40px;
	}
	
	.cardRightDiv{
		display: flex;
		flex-direction: column;
		margin-right: 50px;
	}
	
	.cardBtmDiv {
		display: flex;
		flex-direction: row;
	}
	
	</style>
</head>
<body>
<div class="row">
<div class="container">
<h1 style="font-weight: 700;" class="text-center">All Movies</h1>
<hr>
<div class="container text-left">
<!-- Add new movie button redirects to the addMovie.jsp page -->
<a href="<%=request.getContextPath()%>/addMovie.jsp" class="btn btn-success">Add New Movie</a>

</div>


<div style="margin-top:30px; font-size: 20px;">
	<c:forEach var="movie" items="${listMovies}">
		<div style="display:flex; align-items:center; margin-bottom: 35px; ">
			<img style="margin-right: 70px;"  height="175px" width="300px" src="<c:out value="${movie.movieImage}"/>"/>
			<div class="movieCards">
				<div class="cardTopDiv">		
					<div class="cardLeftDiv">
						<div>
							<b>Movie Name: </b><c:out value="${movie.movieName}" />
						</div>
						
						<div>
							<b>Genre: </b><c:out value="${movie.genre}" />
						</div>
					</div>
					
					<div class="cardRightDiv">
						<div>
							<b>Age Rating: </b><c:out value="${movie.ageRating}" />
						</div>
						<div>
							<b>Trailer: </b><a target="_blank" href="
							<c:out value="${movie.trailer}"/>"><c:out value="${movie.trailer}"/></a>
						</div>
					</div>
				</div>
				
				<div style="margin-bottom: 10px; width: 850px;">
					<b>Description: </b><c:out value="${movie.description}" />
				</div>
				
				<div class="cardBtmDiv">
					<div>
						<a href="edit?id=<c:out value='${movie.id}'
						/>"><b>Edit</b></a> &nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<div>
						<a href="delete?id=<c:out
						value='${movie.id}' />"><b>Delete</b></a>
					</div>
				</div>
				
			</div>
		</div>
	</c:forEach>
</div>
</div>
</div>
</body>
</html>