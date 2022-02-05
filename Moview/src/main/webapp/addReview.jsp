<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback on the movie</title>
</head>
<body>
<h1> Post a review about a movie</h1> 
<form action="AddReviewServlet" method="post">
 <div class="col">
 Movie Title: <input type="text" name="movie" >
 </div>
 <div class="col">
 Rating:  <select name="rating" >
 <option>1</option>
 <option>2</option>
 <option>3</option>
 <option>4</option>
 <option>5</option>
  </select>
 </div>
 <div class="col">
 Feedback: <input type="text" name="feedback" >

 </div>

 <!-- Implement submit button with type = submit to perform the request when clicked -->
 <input type="submit" value="Post" />
 </form>
</body>
</html>