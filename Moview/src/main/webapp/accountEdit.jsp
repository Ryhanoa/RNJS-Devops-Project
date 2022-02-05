<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Edit Account</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-light">
		<div>
			<a class="navbar-brand"> User Management Application </a>
		</div>
		<ul class="navbar-nav">
			<li><a
				href="<%=request.getContextPath()%>/AccountServlet/dashboard?username=<c:out value="${accounts.username}" />&password=
				<c:out value="${accounts.password}" />"
				class="nav-link">Back to Account Setting</a></li>
		</ul>
	</nav>
	<div class="container col-md-6">
		<div class="card">
			<div class="card-body">
				<c:if test="${accounts != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${accounts == null}">
					<form action="insert" method="post">
				</c:if>
				
				<caption>
					<h2>
						<c:if test="${accounts != null}">Edit User</c:if>
						<c:if test="${accounts == null}">Add New User</c:if>
					</h2>
				</caption>
				
				<c:if test="${accounts != null}">
					<input type="hidden" name="oriName"
						value="<c:out value='${accounts.username}' />" />
				</c:if>
				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${accounts.username}' />" class="form-control" name="username" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Password</label> <input type="text" value="<c:out value='${accounts.password}' />" class="form-control" name="password">
				</fieldset>
				<fieldset class="form-group">
					<label>User Email</label> <input type="text" value="<c:out value='${accounts.email}' />" class="form-control" name="email">
				</fieldset>
				<fieldset class="form-group">
					<label> contact</label> <input type="tel" pattern="[0-9]{8}" minlength="8" maxlength="8" value="<c:out value='${accounts.contact}' />" class="form-control" name="contact">
				</fieldset>
				<fieldset class="form-group">
					<label> address</label> <input type="text" value="<c:out value='${accounts.address}' />" class="form-control" name="address">
				</fieldset>
				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>