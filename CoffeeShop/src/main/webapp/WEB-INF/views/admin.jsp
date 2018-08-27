<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrator crud options</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/journal/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-5C8TGNupopdjruopVTTrVJacBbWqxHK9eis5DB+DYE6RfqIJapdLBRUdaZBTq7mE"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="/">Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="">Login</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/register">Register</a></li>
				<li class="nav-item active"><a class="nav-link" href="/store">Store</a></li>
				<li class="nav-item active"><a class="nav-link" href="/admin">Admin</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<h1 style="text-align: center">Users</h1>
	<table class="table">
		<thead>
			<tr>
				<th>UserName</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gender</th>
				<th>Email</th>
				<th>Phone Number</th>
				<th>Password</th>
				<th>Action</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<%--	<td>${user.id}</td>  --%>
					<td>${user.userName}</td>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.gender}</td>
					<td>${user.email}</td>
					<td>${user.phoneNumber}</td>
					<td>${user.password}</td>
					<td><a class="btn btn-light btn-sm"
						href="/admin/${user.id}/userUpdate">Edit</a>
					<td><a class="btn btn-light btn-sm"
						href="/admin/${user.id}/userDelete">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<h1 style="text-align: center">Products</h1>
	<table class="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Action</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="prod" items="${products}">
				<tr>
					<%--	<td>${user.id}</td>  --%>
					<td>${prod.name}</td>
					<td>${prod.description}</td>
					<td>${prod.quantity}</td>
					<td>${prod.price}</td>
					<td><a class="btn btn-light btn-sm"
						href="/admin/${prod.id}/prodUpdate">Edit</a>
					<td><a class="btn btn-light btn-sm"
						href="/admin/${prod.id}/prodDelete">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>