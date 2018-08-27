<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update product info page</title>
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

	<div class="container">
		<!-- A form without an action submits back to the same URL, which is what we want here. -->
		<form method="post">
			<div class="form-group">
				<label for="name">Name</label> <input class="form-control"
					id="name" name="name" value="${prod.name}" required
					minlength="2" Autocomplete="off">
			</div>
			<div class="form-group">
				<label for="description">Description</label> <input
					class="form-control" id="description" name="description"
					value="${prod.description}" required minlength="2">
			</div>
			<div class="form-group">
				<label for="quantity">Quantity</label> <input class="form-control"
					id="quantity" name="quantity" value="${prod.quantity}" required
					minlength="1" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="price">Price</label> <input class="form-control"
					id="price" name="price" value="${prod.price}" required
					minlength="2" autocomplete="off">
			</div>
			<button type="submit class="btnbtn-primary">Submit</button>
			<%--Reconhece o type para que o botão funcione sem precisar fazer nada, pode ser que precise estar dentro da tag form --%>

			<a href="/admin" class="btn btn-link">Cancel</a>
		</form>
	</div>
</html>